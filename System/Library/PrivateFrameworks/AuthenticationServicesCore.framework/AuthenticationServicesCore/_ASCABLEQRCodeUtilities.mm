@interface _ASCABLEQRCodeUtilities
+ (BOOL)isPasskeyRegistrationURL:(id)l;
+ (BOOL)isPasskeyURL:(id)l;
+ (int64_t)passkeyURLTypeFromURL:(id)l;
- (_TtC26AuthenticationServicesCore23_ASCABLEQRCodeUtilities)init;
@end

@implementation _ASCABLEQRCodeUtilities

- (_TtC26AuthenticationServicesCore23_ASCABLEQRCodeUtilities)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(_ASCABLEQRCodeUtilities *)&v3 init];
}

+ (BOOL)isPasskeyURL:(id)l
{
  v3 = sub_1C2170024();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C216FFD4();
  sub_1C2170004();
  if (v8)
  {
    v9 = sub_1C2170984();
    v11 = v10;

    if (v9 == 1868851558 && v11 == 0xE400000000000000)
    {

      v13 = 1;
    }

    else
    {
      v13 = sub_1C2171324();
    }
  }

  else
  {
    v13 = 0;
  }

  (*(v4 + 8))(v7, v3);
  return v13 & 1;
}

+ (BOOL)isPasskeyRegistrationURL:(id)l
{
  v3 = sub_1C2170024();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C216FFD4();
  v8 = _s26AuthenticationServicesCore23_ASCABLEQRCodeUtilitiesC14passkeyURLType4fromSo010_ASPasskeyG0V10Foundation3URLV_tFZ_0(v7);
  (*(v4 + 8))(v7, v3);
  return v8 == 2;
}

+ (int64_t)passkeyURLTypeFromURL:(id)l
{
  v3 = sub_1C2170024();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C216FFD4();
  v8 = _s26AuthenticationServicesCore23_ASCABLEQRCodeUtilitiesC14passkeyURLType4fromSo010_ASPasskeyG0V10Foundation3URLV_tFZ_0(v7);
  (*(v4 + 8))(v7, v3);
  return v8;
}

@end