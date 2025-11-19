@interface FPActionOperationLocator
+ (id)locatorForItem:(id)a3;
+ (id)locatorForURL:(id)a3;
- (BOOL)isDownloaded;
- (BOOL)isEqual:(id)a3;
- (BOOL)isFolder;
- (BOOL)requiresCrossDeviceCopy;
- (FPActionOperationLocator)initWithCoder:(id)a3;
- (FPActionOperationLocator)initWithObject:(id)a3;
- (FPItem)asFPItem;
- (NSString)filename;
- (NSURL)asURL;
- (id)copyWithZone:(_NSZone *)a3;
- (id)identifier;
- (id)parentIdentifier;
- (unint64_t)size;
- (void)asFPItem;
- (void)asURL;
@end

@implementation FPActionOperationLocator

+ (id)locatorForURL:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = [[FPURLOperationLocator alloc] initWithObject:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)locatorForItem:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = [(FPActionOperationLocator *)[FPItemOperationLocator alloc] initWithObject:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (FPActionOperationLocator)initWithObject:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FPActionOperationLocator;
  v6 = [(FPActionOperationLocator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_object, a3);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  object = self->_object;

  return [v4 initWithObject:object];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  if (v4 == self)
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

- (FPActionOperationLocator)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"obj"];

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
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"FPActionOperationLocator.m" lineNumber:124 description:@"UNREACHABLE: needs override"];

  return 0;
}

- (unint64_t)size
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"FPActionOperationLocator.m" lineNumber:130 description:@"UNREACHABLE: needs override"];

  return 0;
}

- (BOOL)isDownloaded
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"FPActionOperationLocator.m" lineNumber:136 description:@"UNREACHABLE: needs override"];

  return 0;
}

- (id)identifier
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"FPActionOperationLocator.m" lineNumber:142 description:@"UNREACHABLE: needs override"];

  return 0;
}

- (id)parentIdentifier
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"FPActionOperationLocator.m" lineNumber:148 description:@"UNREACHABLE: needs override"];

  return 0;
}

- (BOOL)isFolder
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"FPActionOperationLocator.m" lineNumber:154 description:@"UNREACHABLE: needs override"];

  return 0;
}

- (BOOL)requiresCrossDeviceCopy
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"FPActionOperationLocator.m" lineNumber:165 description:@"UNREACHABLE: needs override"];

  return 0;
}

- (void)asURL
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"FPActionOperationLocator.m" lineNumber:112 description:@"not a url"];
}

- (void)asFPItem
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"FPActionOperationLocator.m" lineNumber:118 description:@"not an item"];
}

@end