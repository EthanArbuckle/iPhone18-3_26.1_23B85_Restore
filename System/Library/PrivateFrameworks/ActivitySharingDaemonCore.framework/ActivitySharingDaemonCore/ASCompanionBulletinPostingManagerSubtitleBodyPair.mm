@interface ASCompanionBulletinPostingManagerSubtitleBodyPair
- (ASCompanionBulletinPostingManagerSubtitleBodyPair)initWithSubtitle:(id)subtitle body:(id)body;
@end

@implementation ASCompanionBulletinPostingManagerSubtitleBodyPair

- (ASCompanionBulletinPostingManagerSubtitleBodyPair)initWithSubtitle:(id)subtitle body:(id)body
{
  subtitleCopy = subtitle;
  bodyCopy = body;
  v12.receiver = self;
  v12.super_class = ASCompanionBulletinPostingManagerSubtitleBodyPair;
  v9 = [(ASCompanionBulletinPostingManagerSubtitleBodyPair *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_subtitle, subtitle);
    objc_storeStrong(&v10->_body, body);
  }

  return v10;
}

@end