@interface QLThumbnailCachedAddition
- (BOOL)isEqual:(id)a3;
- (BOOL)isStillValid;
- (QLThumbnailCachedAddition)initWithAddition:(id)a3;
@end

@implementation QLThumbnailCachedAddition

- (QLThumbnailCachedAddition)initWithAddition:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = QLThumbnailCachedAddition;
  v5 = [(QLThumbnailCachedAddition *)&v11 init];
  if (!v5)
  {
    goto LABEL_5;
  }

  memset(&v10, 0, sizeof(v10));
  v6 = [v4 url];
  v7 = stat([v6 fileSystemRepresentation], &v10);

  if (!v7)
  {
    [(QLThumbnailCachedAddition *)v5 setAddition:v4];
    v5->_fileID = v10.st_ino;
LABEL_5:
    v8 = v5;
    goto LABEL_6;
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 addition];
    v6 = [v5 isEqual:self->_addition];
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