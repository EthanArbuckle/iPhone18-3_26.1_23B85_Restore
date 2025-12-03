@interface NSXPCInterface(MFMailComposeRemoteInterfaces)
+ (id)mf_mailComposeRemoteServiceInterface;
@end

@implementation NSXPCInterface(MFMailComposeRemoteInterfaces)

+ (id)mf_mailComposeRemoteServiceInterface
{
  v20[1] = *MEMORY[0x1E69E9840];
  v1 = [self interfaceWithProtocol:&unk_1F3DA7730];
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [v2 setWithObjects:{v3, v4, v5, v6, v7, v8, v9, v10, objc_opt_class(), 0}];
  [v1 setClasses:v11 forSelector:sel_setCompositionValues_ argumentIndex:0 ofReply:0];
  v12 = MEMORY[0x1E695DFD8];
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = [v12 setWithObjects:{v13, v14, objc_opt_class(), 0}];
  [v1 setClasses:v15 forSelector:sel_framesForAttachmentsWithIdentifiers_withReply_ argumentIndex:0 ofReply:1];
  v16 = MEMORY[0x1E695DFD8];
  v20[0] = objc_opt_class();
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  v18 = [v16 setWithArray:v17];
  [v1 setClasses:v18 forSelector:sel_addAttachmentWithItemProvider_mimeType_filename_hostIdentifier_ argumentIndex:0 ofReply:0];

  return v1;
}

@end