@interface BKSEventDeferringChainIdentity
+ (BKSEventDeferringChainIdentity)new;
+ (id)build:(id)build;
- (BKSEventDeferringChainIdentity)init;
- (BKSEventDeferringChainIdentity)initWithCoder:(id)coder;
- (BKSEventDeferringChainIdentity)initWithDisplay:(id)display environment:(id)environment;
- (BOOL)isEqual:(id)equal;
- (id)_init;
- (id)_initWithCopyOf:(id *)of;
- (id)didFinishProtobufDecodingWithError:(id *)error;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)encodeWithCoder:(id)coder;
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
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:sel__init object:v1 file:@"BKSEventDeferringChainIdentity.m" lineNumber:63 description:@"BKSEventDeferringChainIdentity cannot be subclassed"];
      }
    }

    v5.receiver = v1;
    v5.super_class = BKSEventDeferringChainIdentity;
    return objc_msgSendSuper2(&v5, sel_init);
  }

  return result;
}

- (id)_initWithCopyOf:(id *)of
{
  v3 = a2;
  if (of)
  {
    _init = [(BKSEventDeferringChainIdentity *)of _init];
    of = _init;
    if (_init)
    {
      objc_storeStrong(_init + 1, v3[1]);
      objc_storeStrong(of + 2, v3[2]);
    }
  }

  return of;
}

- (id)didFinishProtobufDecodingWithError:(id *)error
{
  if (self->_display)
  {
    if (self->_environment)
    {
      selfCopy = self;
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
  selfCopy = 0;
  *error = v8;
LABEL_7:

  return selfCopy;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  v4 = [formatterCopy appendObject:self->_environment withName:0];
  v5 = [formatterCopy appendObject:self->_display withName:@"display"];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [BKSMutableEventDeferringChainIdentity alloc];

  return [(BKSEventDeferringChainIdentity *)&v4->super.super.isa _initWithCopyOf:?];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  display = self->_display;
  v7 = coderCopy;
  if (display)
  {
    [coderCopy encodeObject:display forKey:@"display"];
    coderCopy = v7;
  }

  environment = self->_environment;
  if (environment)
  {
    [v7 encodeObject:environment forKey:@"environment"];
    coderCopy = v7;
  }
}

- (BKSEventDeferringChainIdentity)initWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = BKSEventDeferringChainIdentity;
  coderCopy = coder;
  v4 = [(BKSEventDeferringChainIdentity *)&v10 init];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:{@"display", v10.receiver, v10.super_class}];
  display = v4->_display;
  v4->_display = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"environment"];

  environment = v4->_environment;
  v4->_environment = v7;

  return v4;
}

- (BKSEventDeferringChainIdentity)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[BKSEventDeferringChainIdentity init]"];
  [currentHandler handleFailureInFunction:v4 file:@"BKSEventDeferringChainIdentity.m" lineNumber:52 description:@"cannot directly allocate BKSEventDeferringChainIdentity"];

  return 0;
}

- (BKSEventDeferringChainIdentity)initWithDisplay:(id)display environment:(id)environment
{
  displayCopy = display;
  environmentCopy = environment;
  _init = [(BKSEventDeferringChainIdentity *)self _init];
  if (_init)
  {
    if (!displayCopy)
    {
      displayCopy = +[BKSHIDEventDisplay nullDisplay];
    }

    objc_storeStrong(&_init->_display, displayCopy);
    objc_storeStrong(&_init->_environment, environment);
  }

  return _init;
}

void __48__BKSEventDeferringChainIdentity_protobufSchema__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 addField:"_display"];
  [v2 addField:"_environment"];
}

+ (BKSEventDeferringChainIdentity)new
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[BKSEventDeferringChainIdentity new]"];
  [currentHandler handleFailureInFunction:v3 file:@"BKSEventDeferringChainIdentity.m" lineNumber:57 description:@"cannot directly allocate BKSEventDeferringChainIdentity"];

  return 0;
}

+ (id)build:(id)build
{
  buildCopy = build;
  _init = [(BKSEventDeferringChainIdentity *)[BKSMutableEventDeferringChainIdentity alloc] _init];
  buildCopy[2](buildCopy, _init);

  v5 = [_init copy];

  return v5;
}

@end