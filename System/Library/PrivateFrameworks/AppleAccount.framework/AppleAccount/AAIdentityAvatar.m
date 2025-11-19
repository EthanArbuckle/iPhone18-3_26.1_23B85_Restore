@interface AAIdentityAvatar
- (AAIdentityAvatar)init;
- (AAIdentityAvatar)initWithCoder:(id)a3;
- (AAIdentityAvatar)initWithIdentifier:(id)a3 imageData:(id)a4 cropRect:(id)a5;
- (NSData)imageData;
- (NSUUID)identifier;
- (NSValue)cropRectValue;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AAIdentityAvatar

- (NSUUID)identifier
{
  v3 = sub_1B70557C0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00]();
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR___AAIdentityAvatar_identifier, v3);
  v8 = sub_1B70557A0();
  (*(v4 + 8))(v7, v3);

  return v8;
}

- (NSData)imageData
{
  v2 = (self + OBJC_IVAR___AAIdentityAvatar_imageData);
  v3 = *(self + OBJC_IVAR___AAIdentityAvatar_imageData + 8);
  if (v3 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v5 = *v2;
    sub_1B700D100(*v2, v3);
    v6 = sub_1B7055780();
    sub_1B700ED20(v5, v3);
    v4 = v6;
  }

  return v4;
}

- (AAIdentityAvatar)init
{
  result = sub_1B7055940();
  __break(1u);
  return result;
}

- (AAIdentityAvatar)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_1B700EA4C();

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B700DB88(v4);
}

- (NSValue)cropRectValue
{
  v3 = (self + OBJC_IVAR___AAIdentityAvatar_cropRect);
  if (*(self + OBJC_IVAR___AAIdentityAvatar_cropRect + 32))
  {
    v4 = 0;
  }

  else
  {
    v6 = v3[2];
    v7 = v3[3];
    v8 = *v3;
    v9 = v3[1];
    v4 = sub_1B70558D0();
  }

  return v4;
}

- (AAIdentityAvatar)initWithIdentifier:(id)a3 imageData:(id)a4 cropRect:(id)a5
{
  v7 = *(*(sub_1B70557C0() - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B70557B0();
  v10 = a5;
  if (a4)
  {
    v11 = a4;
    a4 = sub_1B7055790();
    v13 = v12;
  }

  else
  {
    v13 = 0xF000000000000000;
  }

  return Identity.Avatar.init(identifier:imageData:cropRect:)(v9, a4, v13, a5);
}

@end