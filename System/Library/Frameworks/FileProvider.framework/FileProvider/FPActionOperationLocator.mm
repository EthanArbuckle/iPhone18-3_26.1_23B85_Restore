@interface FPActionOperationLocator
+ (id)locatorForItem:(id)item;
+ (id)locatorForURL:(id)l;
- (BOOL)isDownloaded;
- (BOOL)isEqual:(id)equal;
- (BOOL)isFolder;
- (BOOL)requiresCrossDeviceCopy;
- (FPActionOperationLocator)initWithCoder:(id)coder;
- (FPActionOperationLocator)initWithObject:(id)object;
- (FPItem)asFPItem;
- (NSString)filename;
- (NSURL)asURL;
- (id)copyWithZone:(_NSZone *)zone;
- (id)identifier;
- (id)parentIdentifier;
- (unint64_t)size;
- (void)asFPItem;
- (void)asURL;
@end

@implementation FPActionOperationLocator

+ (id)locatorForURL:(id)l
{
  if (l)
  {
    lCopy = l;
    v4 = [[FPURLOperationLocator alloc] initWithObject:lCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)locatorForItem:(id)item
{
  if (item)
  {
    itemCopy = item;
    v4 = [(FPActionOperationLocator *)[FPItemOperationLocator alloc] initWithObject:itemCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (FPActionOperationLocator)initWithObject:(id)object
{
  objectCopy = object;
  v9.receiver = self;
  v9.super_class = FPActionOperationLocator;
  v6 = [(FPActionOperationLocator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_object, object);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  object = self->_object;

  return [v4 initWithObject:object];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_5;
  }

  if (equalCopy == self)
  {
    v6 = 1;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [self->_object isEqual:v5->_object];
  }

  else
  {
LABEL_5:
    v6 = 0;
  }

LABEL_7:

  return v6;
}

- (FPActionOperationLocator)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"obj"];

  v9 = [(FPActionOperationLocator *)self initWithObject:v8];
  return v9;
}

- (NSURL)asURL
{
  if (![(FPActionOperationLocator *)self isExternalURL]&& ![(FPActionOperationLocator *)self isExternalURL])
  {
    [(FPActionOperationLocator *)a2 asURL];
  }

  object = self->_object;

  return object;
}

- (FPItem)asFPItem
{
  if (![(FPActionOperationLocator *)self isProviderItem]&& ![(FPActionOperationLocator *)self isProviderItem])
  {
    [(FPActionOperationLocator *)a2 asFPItem];
  }

  object = self->_object;

  return object;
}

- (NSString)filename
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"FPActionOperationLocator.m" lineNumber:124 description:@"UNREACHABLE: needs override"];

  return 0;
}

- (unint64_t)size
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"FPActionOperationLocator.m" lineNumber:130 description:@"UNREACHABLE: needs override"];

  return 0;
}

- (BOOL)isDownloaded
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"FPActionOperationLocator.m" lineNumber:136 description:@"UNREACHABLE: needs override"];

  return 0;
}

- (id)identifier
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"FPActionOperationLocator.m" lineNumber:142 description:@"UNREACHABLE: needs override"];

  return 0;
}

- (id)parentIdentifier
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"FPActionOperationLocator.m" lineNumber:148 description:@"UNREACHABLE: needs override"];

  return 0;
}

- (BOOL)isFolder
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"FPActionOperationLocator.m" lineNumber:154 description:@"UNREACHABLE: needs override"];

  return 0;
}

- (BOOL)requiresCrossDeviceCopy
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"FPActionOperationLocator.m" lineNumber:165 description:@"UNREACHABLE: needs override"];

  return 0;
}

- (void)asURL
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"FPActionOperationLocator.m" lineNumber:112 description:@"not a url"];
}

- (void)asFPItem
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"FPActionOperationLocator.m" lineNumber:118 description:@"not an item"];
}

@end