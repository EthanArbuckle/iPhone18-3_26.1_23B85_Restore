@interface _SFReaderCustomProtocols
+ (OpaqueJSScript)readerUserInterfaceScriptForContext:(OpaqueJSContext *)a3;
+ (void)registerReaderCustomProtocols;
@end

@implementation _SFReaderCustomProtocols

+ (void)registerReaderCustomProtocols
{
  SafariShared::TranslatedFileURLProtocol::registerProtocol();

  SafariShared::TranslatedFileURLProtocol::registerProtocol();
}

+ (OpaqueJSScript)readerUserInterfaceScriptForContext:(OpaqueJSContext *)a3
{
  {
    JSContextGetGroup(a3);
    +[_SFReaderCustomProtocols readerUserInterfaceScriptForContext:]::userInterfaceScript = JSScriptCreateReferencingImmortalASCIIText();
  }

  return +[_SFReaderCustomProtocols readerUserInterfaceScriptForContext:]::userInterfaceScript;
}

@end