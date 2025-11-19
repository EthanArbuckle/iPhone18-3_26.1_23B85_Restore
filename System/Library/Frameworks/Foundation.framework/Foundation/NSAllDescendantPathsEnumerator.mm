@interface NSAllDescendantPathsEnumerator
+ (id)newWithPath:(id)a3 prepend:(id)a4 attributes:(id)a5 cross:(BOOL)a6 depth:(unint64_t)a7;
- (id)currentSubdirectoryAttributes;
- (id)directoryAttributes;
- (id)fileAttributes;
- (id)nextObject;
- (unint64_t)level;
- (void)dealloc;
- (void)skipDescendants;
@end

@implementation NSAllDescendantPathsEnumerator

- (id)nextObject
{
  v13 = *MEMORY[0x1E69E9840];
  memset(&v12, 0, sizeof(v12));
  under = self->under;
  if (under)
  {
    v4 = [(NSAllDescendantPathsEnumerator *)under nextObject:*&v12.st_dev];
    if (v4)
    {
      return v4;
    }

    self->pathToLastReportedItem = self->under->pathToLastReportedItem;
    self->under = 0;
  }

  v5 = [(NSArray *)self->contents count];
  if (self->idx >= v5)
  {
    return 0;
  }

  v6 = v5;
  while (1)
  {
    v4 = [(NSArray *)self->contents objectAtIndex:?];
    ++self->idx;
    v7 = [(NSString *)self->path stringByAppendingString:v4];
    if (!lstat([(NSString *)v7 fileSystemRepresentation], &v12))
    {
      break;
    }

    if (self->idx >= v6)
    {
      return 0;
    }
  }

  self->pathToLastReportedItem = v7;
  if ((v12.st_mode & 0xF000) == 0x4000)
  {
    prepend = self->prepend;
    v10 = v4;
    if (prepend)
    {
      v10 = [(NSString *)prepend stringByAppendingPathComponent:v4, v4];
    }

    self->under = [NSAllDescendantPathsEnumerator newWithPath:v7 prepend:v10 attributes:0 cross:self->cross depth:self->depth + 1];
  }

  v11 = self->prepend;
  if (v11)
  {
    return [(NSString *)v11 stringByAppendingPathComponent:v4];
  }

  return v4;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSAllDescendantPathsEnumerator;
  [(NSAllDescendantPathsEnumerator *)&v3 dealloc];
}

- (id)fileAttributes
{
  do
  {
    v2 = self;
    self = self->under;
  }

  while (self && self->idx);
  v3 = +[NSFileManager defaultManager];
  pathToLastReportedItem = v2->pathToLastReportedItem;

  return [(NSFileManager *)v3 attributesOfItemAtPath:pathToLastReportedItem error:0];
}

+ (id)newWithPath:(id)a3 prepend:(id)a4 attributes:(id)a5 cross:(BOOL)a6 depth:(unint64_t)a7
{
  v12 = [objc_allocWithZone(a1) init];
  *(v12 + 16) = [+[NSFileManager defaultManager](NSFileManager contentsOfDirectoryAtPath:"contentsOfDirectoryAtPath:error:" error:a3, 0];
  *(v12 + 32) = [a4 copyWithZone:0];
  *(v12 + 8) = [a3 stringByAppendingString:@"/"];
  *(v12 + 48) = a5;
  *(v12 + 72) = a6;
  *(v12 + 64) = a7;
  return v12;
}

- (id)directoryAttributes
{
  v3 = +[NSFileManager defaultManager];
  path = self->path;

  return [(NSFileManager *)v3 attributesOfItemAtPath:path error:0];
}

- (id)currentSubdirectoryAttributes
{
  do
  {
    v2 = self;
    self = self->under;
  }

  while (self && self->idx);
  v3 = +[NSFileManager defaultManager];
  v4 = [(NSString *)v2->pathToLastReportedItem stringByDeletingLastPathComponent];

  return [(NSFileManager *)v3 attributesOfItemAtPath:v4 error:0];
}

- (unint64_t)level
{
  do
  {
    v2 = self;
    self = self->under;
  }

  while (self && self->idx);
  return v2->depth;
}

- (void)skipDescendants
{
  under = self->under;
  if (under && (v4 = [(NSAllDescendantPathsEnumerator *)under _under], under = self->under, !v4))
  {

    self->under = 0;
  }

  else
  {

    [(NSAllDescendantPathsEnumerator *)under skipDescendents];
  }
}

@end