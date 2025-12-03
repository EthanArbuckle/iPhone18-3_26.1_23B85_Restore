@interface TPHObjectiveC
+ (ccec_full_ctx)ccec384Context;
+ (id)digestUsingSha384:(id)sha384;
+ (id)fetchKeyPairWithPrivateKeyPersistentRef:(id)ref error:(id *)error;
@end

@implementation TPHObjectiveC

+ (id)digestUsingSha384:(id)sha384
{
  sha384Copy = sha384;
  ccsha384_di();
  v4 = [[NSMutableData alloc] initWithLength:*ccsha384_di()];
  [sha384Copy length];
  [sha384Copy bytes];

  [v4 mutableBytes];
  ccdigest();
  v5 = [v4 base64EncodedStringWithOptions:0];

  return v5;
}

+ (ccec_full_ctx)ccec384Context
{
  v2 = ccec_cp_384();
  result = malloc_type_malloc((32 * *v2) | 0x10, 0x60040B37CB4BBuLL);
  result->var0 = v2;
  return result;
}

+ (id)fetchKeyPairWithPrivateKeyPersistentRef:(id)ref error:(id *)error
{
  refCopy = ref;
  v14[0] = kSecReturnRef;
  v14[1] = kSecClass;
  v15[0] = &__kCFBooleanTrue;
  v15[1] = kSecClassKey;
  v14[2] = kSecValuePersistentRef;
  v15[2] = refCopy;
  v6 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:3];
  cf = 0;
  v7 = SecItemCopyMatching(v6, &cf);
  if (v7 || (v8 = CFGetTypeID(cf), v8 != SecKeyGetTypeID()))
  {
    if (error)
    {
      [NSError errorWithDomain:NSOSStatusErrorDomain code:v7 userInfo:0];
      *error = v10 = 0;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v9 = [_SFECKeyPair alloc];
    v10 = [v9 initWithSecKey:cf];
    v11 = cf;
    if (cf)
    {
      cf = 0;
      CFRelease(v11);
    }
  }

  return v10;
}

@end