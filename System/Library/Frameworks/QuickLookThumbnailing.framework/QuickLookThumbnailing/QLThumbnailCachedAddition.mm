@interface QLThumbnailCachedAddition
- (BOOL)isEqual:(id)equal;
- (BOOL)isStillValid;
- (QLThumbnailCachedAddition)initWithAddition:(id)addition;
@end

@implementation QLThumbnailCachedAddition

- (QLThumbnailCachedAddition)initWithAddition:(id)addition
{
  additionCopy = addition;
  v11.receiver = self;
  v11.super_class = QLThumbnailCachedAddition;
  v5 = [(QLThumbnailCachedAddition *)&v11 init];
  if (!v5)
  {
    goto LABEL_5;
  }

  memset(&v10, 0, sizeof(v10));
  v6 = [additionCopy url];
  v7 = stat([v6 fileSystemRepresentation], &v10);

  if (!v7)
  {
    [(QLThumbnailCachedAddition *)v5 setAddition:additionCopy];
    v5->_fileID = v10.st_ino;
LABEL_5:
    v8 = v5;
    goto LABEL_6;
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    addition = [equalCopy addition];
    v6 = [addition isEqual:self->_addition];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isStillValid
{
  memset(&v6, 0, sizeof(v6));
  v3 = [(GSAddition *)self->_addition url];
  v4 = stat([v3 fileSystemRepresentation], &v6);

  return !v4 && self->_fileID == v6.st_ino;
}

@end