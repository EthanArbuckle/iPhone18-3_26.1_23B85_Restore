@interface ASCompanionBulletinPostingManagerSubtitleBodyPair
- (ASCompanionBulletinPostingManagerSubtitleBodyPair)initWithSubtitle:(id)a3 body:(id)a4;
@end

@implementation ASCompanionBulletinPostingManagerSubtitleBodyPair

- (ASCompanionBulletinPostingManagerSubtitleBodyPair)initWithSubtitle:(id)a3 body:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ASCompanionBulletinPostingManagerSubtitleBodyPair;
  v9 = [(ASCompanionBulletinPostingManagerSubtitleBodyPair *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_subtitle, a3);
    objc_storeStrong(&v10->_body, a4);
  }

  return v10;
}

@end