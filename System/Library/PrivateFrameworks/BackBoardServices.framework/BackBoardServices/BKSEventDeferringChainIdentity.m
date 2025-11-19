@interface BKSEventDeferringChainIdentity
+ (BKSEventDeferringChainIdentity)new;
+ (id)build:(id)a3;
- (BKSEventDeferringChainIdentity)init;
- (BKSEventDeferringChainIdentity)initWithCoder:(id)a3;
- (BKSEventDeferringChainIdentity)initWithDisplay:(id)a3 environment:(id)a4;
- (BOOL)isEqual:(id)a3;
- (id)_init;
- (id)_initWithCopyOf:(id *)a1;
- (id)didFinishProtobufDecodingWithError:(id *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BKSEventDeferringChainIdentity

- (unint64_t)hash
{
  [(BKSHIDEventDisplay *)self->_display hash];
  [(BKSHIDEventDeferringEnvironment *)self->_environment hash];

  return BSHashPurifyNS();
}

- (id)_init
{
  if (result)
  {
    v1 = result;
    v2 = objc_opt_class();
    if (v2 != objc_opt_class())
    {
      v3 = objc_opt_class();
      if (v3 != objc_opt_class())
      {
        v4 = [MEMORY[0x1E696AAA8] currentHandler];
        [v4 handleFailureInMethod:sel__init object:v1 file:@"BKSEventDeferringChainIdentity.m" lineNumber:63 description:@"BKSEventDeferringChainIdentity cannot be subclassed"];
      }
    }

    v5.receiver = v1;
    v5.super_class = BKSEventDeferringChainIdentity;
    return objc_msgSendSuper2(&v5, sel_init);
  }

  return result;
}

- (id)_initWithCopyOf:(id *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [(BKSEventDeferringChainIdentity *)a1 _init];
    a1 = v4;
    if (v4)
    {
      objc_storeStrong(v4 + 1, v3[1]);
      objc_storeStrong(a1 + 2, v3[2]);
    }
  }

  return a1;
}

- (id)didFinishProtobufDecodingWithError:(id *)a3
{
  if (self->_display)
  {
    if (self->_environment)
    {
      v4 = self;
      goto LABEL_7;
    }

    v5 = MEMORY[0x1E696ABC0];
    v6 = *MEMORY[0x1E696A798];
    v7 = &unk_1EF56BF90;
  }

  else
  {
    v5 = MEMORY[0x1E696ABC0];
    v6 = *MEMORY[0x1E696A798];
    v7 = &unk_1EF56BF68;
  }

  v8 = [v5 errorWithDomain:v6 code:5 userInfo:v7];
  v9 = v8;
  v4 = 0;
  *a3 = v8;
LABEL_7:

  return v4;
}

- (void)appendDescriptionToFormatter:(id)a3
{
  v6 = a3;
  v4 = [v6 appendObject:self->_environment withName:0];
  v5 = [v6 appendObject:self->_display withName:@"display"];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [BKSMutableEventDeferringChainIdentity alloc];

  return [(BKSEventDeferringChainIdentity *)&v4->super.super.isa _initWithCopyOf:?];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = v5[1];
    display = self->_display;
    if (BSEqualObjects())
    {
      v8 = v5[2];
      environment = self->_environment;
      v10 = BSEqualObjects();
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  display = self->_display;
  v7 = v4;
  if (display)
  {
    [v4 encodeObject:display forKey:@"display"];
    v4 = v7;
  }

  environment = self->_environment;
  if (environment)
  {
    [v7 encodeObject:environment forKey:@"environment"];
    v4 = v7;
  }
}

- (BKSEventDeferringChainIdentity)initWithCoder:(id)a3
{
  v10.receiver = self;
  v10.super_class = BKSEventDeferringChainIdentity;
  v3 = a3;
  v4 = [(BKSEventDeferringChainIdentity *)&v10 init];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:{@"display", v10.receiver, v10.super_class}];
  display = v4->_display;
  v4->_display = v5;

  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"environment"];

  environment = v4->_environment;
  v4->_environment = v7;

  return v4;
}

- (BKSEventDeferringChainIdentity)init
{
  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[BKSEventDeferringChainIdentity init]"];
  [v3 handleFailureInFunction:v4 file:@"BKSEventDeferringChainIdentity.m" lineNumber:52 description:@"cannot directly allocate BKSEventDeferringChainIdentity"];

  return 0;
}

- (BKSEventDeferringChainIdentity)initWithDisplay:(id)a3 environment:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BKSEventDeferringChainIdentity *)self _init];
  if (v8)
  {
    if (!v6)
    {
      v6 = +[BKSHIDEventDisplay nullDisplay];
    }

    objc_storeStrong(&v8->_display, v6);
    objc_storeStrong(&v8->_environment, a4);
  }

  return v8;
}

void __48__BKSEventDeferringChainIdentity_protobufSchema__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 addField:"_display"];
  [v2 addField:"_environment"];
}

+ (BKSEventDeferringChainIdentity)new
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[BKSEventDeferringChainIdentity new]"];
  [v2 handleFailureInFunction:v3 file:@"BKSEventDeferringChainIdentity.m" lineNumber:57 description:@"cannot directly allocate BKSEventDeferringChainIdentity"];

  return 0;
}

+ (id)build:(id)a3
{
  v3 = a3;
  v4 = [(BKSEventDeferringChainIdentity *)[BKSMutableEventDeferringChainIdentity alloc] _init];
  v3[2](v3, v4);

  v5 = [v4 copy];

  return v5;
}

@end