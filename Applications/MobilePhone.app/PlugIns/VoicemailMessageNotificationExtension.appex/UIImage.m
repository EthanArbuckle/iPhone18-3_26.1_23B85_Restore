@interface UIImage
+ (id)voicemailPauseButtonImage;
+ (id)voicemailPlayButtonImage;
@end

@implementation UIImage

+ (id)voicemailPauseButtonImage
{
  if (qword_10009A798 != -1)
  {
    sub_100060128();
  }

  v3 = qword_10009A790;

  return v3;
}

+ (id)voicemailPlayButtonImage
{
  if (qword_10009A7A8 != -1)
  {
    sub_10006013C();
  }

  v3 = qword_10009A7A0;

  return v3;
}

@end