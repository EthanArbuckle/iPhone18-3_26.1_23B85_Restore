@interface NFReaderSessionCallbacks
+ (id)interface;
@end

@implementation NFReaderSessionCallbacks

+ (id)interface
{
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284A557C8];
  v3 = objc_alloc(MEMORY[0x277CBEB98]);
  v4 = objc_opt_class();
  v5 = [v3 initWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_didDetectTags_connectedTagIndex_ argumentIndex:0 ofReply:0];

  v6 = objc_alloc(MEMORY[0x277CBEB98]);
  v7 = objc_opt_class();
  v8 = [v6 initWithObjects:{v7, objc_opt_class(), 0}];
  [v2 setClasses:v8 forSelector:sel_didDetectNDEFMessages_fromTags_connectedTagIndex_updateUICallback_ argumentIndex:0 ofReply:0];

  v9 = objc_alloc(MEMORY[0x277CBEB98]);
  v10 = objc_opt_class();
  v11 = [v9 initWithObjects:{v10, objc_opt_class(), 0}];
  [v2 setClasses:v11 forSelector:sel_didDetectNDEFMessages_fromTags_connectedTagIndex_updateUICallback_ argumentIndex:1 ofReply:0];

  return v2;
}

@end