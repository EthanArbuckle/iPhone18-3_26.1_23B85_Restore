@interface SNError
+ (id)errorWithCode:(int64_t)a3 underlyingError:(id)a4 message:(id)a5;
+ (id)errorWithDomain:(id)a3 code:(int64_t)a4 underlyingError:(id)a5 message:(id)a6;
+ (id)exceptionFromError:(id)a3;
+ (void)autoreleasepoolWithError:(id *)a3 action:(id)a4;
+ (void)populateClientError:(id *)a3 withCode:(int64_t)a4 underlyingError:(id)a5 message:(id)a6;
+ (void)populateClientError:(id *)a3 withDomain:(id)a4 code:(int64_t)a5 underlyingError:(id)a6 message:(id)a7;
+ (void)wrapClientError:(id *)a3 withDomain:(id)a4 code:(int64_t)a5 message:(id)a6;
@end

@implementation SNError

+ (id)errorWithDomain:(id)a3 code:(int64_t)a4 underlyingError:(id)a5 message:(id)a6
{
  v8 = sub_1C9A924A8();
  v10 = v9;
  v11 = sub_1C9A924A8();
  v13 = v12;
  v14 = a5;
  v15 = sub_1C9929478(v8, v10, a4, a5, v11, v13);

  return v15;
}

+ (id)errorWithCode:(int64_t)a3 underlyingError:(id)a4 message:(id)a5
{
  v7 = sub_1C9A924A8();
  v9 = v8;
  v10 = a4;
  v11 = sub_1C992992C(a3, a4, v7, v9);

  return v11;
}

+ (void)populateClientError:(id *)a3 withDomain:(id)a4 code:(int64_t)a5 underlyingError:(id)a6 message:(id)a7
{
  v10 = sub_1C9A924A8();
  v12 = v11;
  v13 = sub_1C9A924A8();
  v15 = v14;
  v16 = a6;
  sub_1C99299F0(a3, v10, v12, a5, a6, v13, v15);
}

+ (void)wrapClientError:(id *)a3 withDomain:(id)a4 code:(int64_t)a5 message:(id)a6
{
  v8 = sub_1C9A924A8();
  v10 = v9;
  v11 = sub_1C9A924A8();
  sub_1C9929AE8(a3, v8, v10, a5, v11, v12);
}

+ (void)populateClientError:(id *)a3 withCode:(int64_t)a4 underlyingError:(id)a5 message:(id)a6
{
  v9 = sub_1C9A924A8();
  v11 = v10;
  v12 = a5;
  sub_1C9929C0C(a3, a4, a5, v9, v11);
}

+ (void)autoreleasepoolWithError:(id *)a3 action:(id)a4
{
  v5 = _Block_copy(a4);
  ObjCClassMetadata = swift_getObjCClassMetadata();

  sub_1C9929CCC(a3, ObjCClassMetadata, v5);
}

+ (id)exceptionFromError:(id)a3
{
  v4 = a3;
  v5 = sub_1C99D18F4(a3);

  return v5;
}

@end