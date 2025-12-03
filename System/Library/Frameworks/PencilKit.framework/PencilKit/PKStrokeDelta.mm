@interface PKStrokeDelta
- (PKStrokeDelta)initWithArchive:(const void *)archive error:(id *)error;
- (PKStrokeDelta)initWithData:(id)data error:(id *)error;
- (id)dataRepresentation;
- (id)description;
- (void)saveToArchive:(void *)archive;
@end

@implementation PKStrokeDelta

- (PKStrokeDelta)initWithData:(id)data error:(id *)error
{
  dataCopy = data;
  v9 = &unk_1F476AEE0;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  if (PKProtobufUtilitiesParseArchiveFromNSDataWithHeader<drawing::StrokeDelta>(&v9, dataCopy, error))
  {
    self = [(PKStrokeDelta *)self initWithArchive:&v9 error:error];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  drawing::StrokeDelta::~StrokeDelta(&v9);

  return selfCopy;
}

- (PKStrokeDelta)initWithArchive:(const void *)archive error:(id *)error
{
  v6 = [(PKStrokeDelta *)self init];
  if (v6)
  {
    if (*(archive + 6))
    {
      v7 = [PKStrokePath strokeDataFromDataArchive:?];
      deltaStrokeData = v6->_deltaStrokeData;
      v6->_deltaStrokeData = v7;

      v9 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:**(archive + 2)];
      v10 = 24;
    }

    else
    {
      v9 = [[_PKStrokeConcrete alloc] initWithArchive:archive error:error];
      v10 = 8;
    }

    v11 = *(&v6->super.isa + v10);
    *(&v6->super.isa + v10) = v9;
  }

  return v6;
}

- (id)dataRepresentation
{
  deltaStroke = [(PKStrokeDelta *)self deltaStroke];

  if (deltaStroke)
  {
    deltaStroke2 = [(PKStrokeDelta *)self deltaStroke];
    dataRepresentation = [deltaStroke2 dataRepresentation];
  }

  else
  {
    v7 = &unk_1F476AEE0;
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    [(PKStrokeDelta *)self saveToArchive:&v7];
    dataRepresentation = PKProtobufUtilitiesNSDataFromArchiveWithHeader<drawing::StrokeDelta>(&v7);
    drawing::StrokeDelta::~StrokeDelta(&v7);
  }

  return dataRepresentation;
}

- (void)saveToArchive:(void *)archive
{
  v10 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  drawing::StrokeDelta::makeStrokeData(archive);
  [(PKStrokePath *)self->_deltaStrokeData saveToDataArchive:*(archive + 6)];
  [array addObject:self->_strokeUUID];
  v6 = *(archive + 3);
  if (v6 >= *(archive + 4))
  {
    v7 = std::vector<PB::Data>::__emplace_back_slow_path<>(archive + 16);
  }

  else
  {
    *v6 = 0;
    v6[1] = 0;
    v7 = (v6 + 2);
  }

  *(archive + 3) = v7;
  *v8 = 0;
  v9 = 0;
  [(NSUUID *)self->_strokeUUID getUUIDBytes:v8];
  PB::Data::assign(*(archive + 2), v8, &v10);
}

- (id)description
{
  deltaStroke = [(PKStrokeDelta *)self deltaStroke];

  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  if (deltaStroke)
  {
    deltaStroke2 = [(PKStrokeDelta *)self deltaStroke];
    v8 = [v4 stringWithFormat:@"<%@: %p stroke=%@>", v6, self, deltaStroke2];
  }

  else
  {
    deltaStroke2 = [(PKStrokeDelta *)self _strokeUUID];
    pK_shortDescription = [deltaStroke2 PK_shortDescription];
    deltaStrokeData = [(PKStrokeDelta *)self deltaStrokeData];
    _startIndex = [deltaStrokeData _startIndex];
    deltaStrokeData2 = [(PKStrokeDelta *)self deltaStrokeData];
    v8 = [v4 stringWithFormat:@"<%@: %p strokeID=%@ %ld->%ld>", v6, self, pK_shortDescription, _startIndex, objc_msgSend(deltaStrokeData2, "_immutablePointsCount")];
  }

  return v8;
}

@end