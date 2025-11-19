@interface LPLinkViewComponents
- (void)applyToAllViews:(id)a3;
@end

@implementation LPLinkViewComponents

- (void)applyToAllViews:(id)a3
{
  v4 = a3;
  v4[2](v4, self->_captionBar);
  v4[2](v4, self->_media);
  v4[2](v4, self->_mediaBackground);
  v4[2](v4, self->_mediaTopCaptionBar);
  v4[2](v4, self->_mediaBottomCaptionBar);
  v4[2](v4, self->_quote);
  v4[2](v4, self->_backgroundImage);
  v4[2](v4, self->_contactsBadge);
  v4[2](v4, self->_domainNameIndicator);
}

@end