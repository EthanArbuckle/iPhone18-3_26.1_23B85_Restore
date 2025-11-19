@interface BSProtobufTranslator
@end

@implementation BSProtobufTranslator

void __52___BSProtobufTranslator_BSAuditToken_protobufSchema__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 addField:"_tokenData"];
  [v2 addField:"_bundleID"];
}

@end