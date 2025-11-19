@interface PKStrokeDelta
- (PKStrokeDelta)initWithArchive:(const void *)a3 error:(id *)a4;
- (PKStrokeDelta)initWithData:(id)a3 error:(id *)a4;
- (id)dataRepresentation;
- (id)description;
- (void)saveToArchive:(void *)a3;
@end

@implementation PKStrokeDelta

- (PKStrokeDelta)initWithData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v9 = &unk_1F476AEE0;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  if (PKProtobufUtilitiesParseArchiveFromNSDataWithHeader<drawing::StrokeDelta>(&v9, v6, a4))
  {
    self = [(PKStrokeDelta *)self initWithArchive:&v9 error:a4];
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  drawing::StrokeDelta::~StrokeDelta(&v9);

  return v7;
}

- (PKStrokeDelta)initWithArchive:(const void *)a3 error:(id *)a4
{
  v6 = [(PKStrokeDelta *)self init];
  if (v6)
  {
    if (*(a3 + 6))
    {
      v7 = [PKStrokePath strokeDataFromDataArchive:?];
      deltaStrokeData = v6->_deltaStrokeData;
      v6->_deltaStrokeData = v7;

      v9 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:**(a3 + 2)];
      v10 = 24;
    }

    else
    {
      v9 = [[_PKStrokeConcrete alloc] initWithArchive:a3 error:a4];
      v10 = 8;
    }

    v11 = *(&v6->super.isa + v10);
    *(&v6->super.isa + v10) = v9;
  }

  return v6;
}

- (id)dataRepresentation
{
  v3 = [(PKStrokeDelta *)self deltaStroke];

  if (v3)
  {
    v4 = [(PKStrokeDelta *)self deltaStroke];
    v5 = [v4 dataRepresentation];
  }

  else
  {
    v7 = &unk_1F476AEE0;
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    [(PKStrokeDelta *)self saveToArchive:&v7];
    v5 = PKProtobufUtilitiesNSDataFromArchiveWithHeader<drawing::StrokeDelta>(&v7);
    drawing::StrokeDelta::~StrokeDelta(&v7);
  }

  return v5;
}

- (void)saveToArchive:(void *)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DF70] array];
  drawing::StrokeDelta::makeStrokeData(a3);
  [(PKStrokePath *)self->_deltaStrokeData saveToDataArchive:*(a3 + 6)];
  [v5 addObject:self->_strokeUUID];
  v6 = *(a3 + 3);
  if (v6 >= *(a3 + 4))
  {
    v7 = std::vector<PB::Data>::__emplace_back_slow_path<>(a3 + 16);
  }

  else
  {
    *v6 = 0;
    v6[1] = 0;
    v7 = (v6 + 2);
  }

  *(a3 + 3) = v7;
  *v8 = 0;
  v9 = 0;
  [(NSUUID *)self->_strokeUUID getUUIDBytes:v8];
  PB::Data::assign(*(a3 + 2), v8, &v10);
}

- (id)description
{
  v3 = [(PKStrokeDelta *)self deltaStroke];

  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  if (v3)
  {
    v7 = [(PKStrokeDelta *)self deltaStroke];
    v8 = [v4 stringWithFormat:@"<%@: %p stroke=%@>", v6, self, v7];
  }

  else
  {
    v7 = [(PKStrokeDelta *)self _strokeUUID];
    v9 = [v7 PK_shortDescription];
    v10 = [(PKStrokeDelta *)self deltaStrokeData];
    v11 = [v10 _startIndex];
    v12 = [(PKStrokeDelta *)self deltaStrokeData];
    v8 = [v4 stringWithFormat:@"<%@: %p strokeID=%@ %ld->%ld>", v6, self, v9, v11, objc_msgSend(v12, "_immutablePointsCount")];
  }

  return v8;
}

@end