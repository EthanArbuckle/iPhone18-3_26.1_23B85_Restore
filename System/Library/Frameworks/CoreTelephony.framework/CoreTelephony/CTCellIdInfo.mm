@interface CTCellIdInfo
- (CTCellIdInfo)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTCellIdInfo

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  cellId = [(CTCellIdInfo *)self cellId];
  [v3 appendFormat:@", cellId=%@", cellId];

  baseId = [(CTCellIdInfo *)self baseId];
  [v3 appendFormat:@", baseId=%@", baseId];

  [v3 appendString:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  cellId = [(CTCellIdInfo *)self cellId];
  v6 = v4[1];
  v4[1] = cellId;

  baseId = [(CTCellIdInfo *)self baseId];
  v8 = v4[2];
  v4[2] = baseId;

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  cellId = [(CTCellIdInfo *)self cellId];
  [coderCopy encodeObject:cellId forKey:@"cellId"];

  baseId = [(CTCellIdInfo *)self baseId];
  [coderCopy encodeObject:baseId forKey:@"baseId"];
}

- (CTCellIdInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CTCellIdInfo;
  v5 = [(CTCellIdInfo *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cellId"];
    cellId = v5->_cellId;
    v5->_cellId = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"baseId"];
    baseId = v5->_baseId;
    v5->_baseId = v8;
  }

  return v5;
}

@end