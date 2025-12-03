@interface _SFReaderCustomProtocols
+ (OpaqueJSScript)readerUserInterfaceScriptForContext:(OpaqueJSContext *)context;
+ (void)registerReaderCustomProtocols;
@end

@implementation _SFReaderCustomProtocols

+ (void)registerReaderCustomProtocols
{
  SafariShared::TranslatedFileURLProtocol::registerProtocol();

  SafariShared::TranslatedFileURLProtocol::registerProtocol();
}

+ (OpaqueJSScript)readerUserInterfaceScriptForContext:(OpaqueJSContext *)context
{
  {
    JSContextGetGroup(context);
    +[_SFReaderCustomProtocols readerUserInterfaceScriptForContext:]::userInterfaceScript = JSScriptCreateReferencingImmortalASCIIText();
  }

  return +[_SFReaderCustomProtocols readerUserInterfaceScriptForContext:]::userInterfaceScript;
}

@end