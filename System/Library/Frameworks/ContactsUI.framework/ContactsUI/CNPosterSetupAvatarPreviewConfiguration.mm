@interface CNPosterSetupAvatarPreviewConfiguration
- (_TtC10ContactsUI39CNPosterSetupAvatarPreviewConfiguration)initWithImageData:(id)data cropRect:(CGRect)rect imageType:(unint64_t)type;
@end

@implementation CNPosterSetupAvatarPreviewConfiguration

- (_TtC10ContactsUI39CNPosterSetupAvatarPreviewConfiguration)initWithImageData:(id)data cropRect:(CGRect)rect imageType:(unint64_t)type
{
  dataCopy = data;
  v6 = sub_199DF71FC();
  v8 = v7;

  v9 = sub_199AD4D78(v6, v8);
  sub_199A9EF34(v6, v8);
  return v9;
}

@end