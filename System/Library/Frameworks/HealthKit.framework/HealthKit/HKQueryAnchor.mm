@interface HKQueryAnchor
+ (id)_anchorWithRowid:(int64_t)rowid;
- (BOOL)isEqual:(id)equal;
- (HKQueryAnchor)initWithCoder:(id)coder;
- (id)description;
- (int64_t)compare:(id)compare;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKQueryAnchor

+ (id)_anchorWithRowid:(int64_t)rowid
{
  v4 = objc_alloc_init(objc_opt_class());
  v4[2] = rowid;

  return v4;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_rowid];
  v4 = [v3 hash];
  v5 = [(NSString *)self->_clientToken hash];

  return v5 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    goto LABEL_9;
  }

  if (!equalCopy)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || self->_rowid != v5->_rowid)
  {
    goto LABEL_8;
  }

  clientToken = self->_clientToken;
  v7 = v5->_clientToken;
  if (clientToken == v7)
  {
LABEL_9:
    v8 = 1;
    goto LABEL_10;
  }

  if (!v7)
  {
LABEL_8:
    v8 = 0;
    goto LABEL_10;
  }

  v8 = [(NSString *)clientToken isEqualToString:?];
LABEL_10:

  return v8;
}

- (int64_t)compare:(id)compare
{
  rowid = self->_rowid;
  v4 = *(compare + 2);
  v5 = rowid < v4;
  v6 = rowid > v4;
  if (v5)
  {
    return -1;
  }

  else
  {
    return v6;
  }
}

- (HKQueryAnchor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_alloc_init(objc_opt_class());

  if (v5)
  {
    v5->_rowid = [coderCopy decodeInt64ForKey:@"rowid"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientToken"];
    clientToken = v5->_clientToken;
    v5->_clientToken = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  rowid = self->_rowid;
  coderCopy = coder;
  [coderCopy encodeInt64:rowid forKey:@"rowid"];
  [coderCopy encodeObject:self->_clientToken forKey:@"clientToken"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = " ";
  clientToken = self->_clientToken;
  if (!clientToken)
  {
    v5 = "";
  }

  v7 = &stru_1F05FF230;
  if (clientToken)
  {
    v7 = self->_clientToken;
  }

  return [v3 stringWithFormat:@"<%@: %lld%s%@>", v4, self->_rowid, v5, v7];
}

@end