@interface NSXPCInterface(CXCallDirectoryManagerSupport)
+ (id)cx_callDirectoryManagerDefaultHostInterface;
- (id)_cx_callDirectoryManagerAllowedClasses;
- (void)_cx_setAllowedClassesForCallDirectoryManagerDefaultHostProtocol;
@end

@implementation NSXPCInterface(CXCallDirectoryManagerSupport)

+ (id)cx_callDirectoryManagerDefaultHostInterface
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2CA8578];
  [v0 _cx_setAllowedClassesForCallDirectoryManagerDefaultHostProtocol];

  return v0;
}

- (void)_cx_setAllowedClassesForCallDirectoryManagerDefaultHostProtocol
{
  _cx_callDirectoryManagerAllowedClasses = [self _cx_callDirectoryManagerAllowedClasses];
  [self setClasses:_cx_callDirectoryManagerAllowedClasses forSelector:sel_firstIdentificationEntriesForEnabledExtensionsWithPhoneNumbers_cacheOnly_reply_ argumentIndex:0 ofReply:1];

  _cx_callDirectoryManagerAllowedClasses2 = [self _cx_callDirectoryManagerAllowedClasses];
  [self setClasses:_cx_callDirectoryManagerAllowedClasses2 forSelector:sel_getExtensionsWithReply_ argumentIndex:0 ofReply:1];
}

- (id)_cx_callDirectoryManagerAllowedClasses
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__NSXPCInterface_CXCallDirectoryManagerSupport___cx_callDirectoryManagerAllowedClasses__block_invoke;
  block[3] = &unk_1E7C06CA8;
  block[4] = self;
  if (_cx_callDirectoryManagerAllowedClasses_onceToken != -1)
  {
    dispatch_once(&_cx_callDirectoryManagerAllowedClasses_onceToken, block);
  }

  return _cx_callDirectoryManagerAllowedClasses_allowedClasses;
}

@end