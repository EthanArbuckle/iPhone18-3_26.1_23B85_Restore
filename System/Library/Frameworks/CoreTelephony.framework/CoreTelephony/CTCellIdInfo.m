@interface CTCellIdInfo
- (CTCellIdInfo)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTCellIdInfo

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(CTCellIdInfo *)self cellId];
  [v3 appendFormat:@", cellId=%@", v4];

  v5 = [(CTCellIdInfo *)self baseId];
  [v3 appendFormat:@", baseId=%@", v5];

  [v3 appendString:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(CTCellIdInfo *)self cellId];
  v6 = v4[1];
  v4[1] = v5;

  v7 = [(CTCellIdInfo *)self baseId];
  v8 = v4[2];
  v4[2] = v7;

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CTCellIdInfo *)self cellId];
  [v4 encodeObject:v5 forKey:@"cellId"];

  v6 = [(CTCellIdInfo *)self baseId];
  [v4 encodeObject:v6 forKey:@"baseId"];
}

- (CTCellIdInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CTCellIdInfo;
  v5 = [(CTCellIdInfo *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cellId"];
    cellId = v5->_cellId;
    v5->_cellId = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"baseId"];
    baseId = v5->_baseId;
    v5->_baseId = v8;
  }

  return v5;
}

@end