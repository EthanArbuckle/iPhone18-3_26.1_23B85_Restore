@interface LPLinkViewComponents
- (void)applyToAllViews:(id)views;
@end

@implementation LPLinkViewComponents

- (void)applyToAllViews:(id)views
{
  viewsCopy = views;
  viewsCopy[2](viewsCopy, self->_captionBar);
  viewsCopy[2](viewsCopy, self->_media);
  viewsCopy[2](viewsCopy, self->_mediaBackground);
  viewsCopy[2](viewsCopy, self->_mediaTopCaptionBar);
  viewsCopy[2](viewsCopy, self->_mediaBottomCaptionBar);
  viewsCopy[2](viewsCopy, self->_quote);
  viewsCopy[2](viewsCopy, self->_backgroundImage);
  viewsCopy[2](viewsCopy, self->_contactsBadge);
  viewsCopy[2](viewsCopy, self->_domainNameIndicator);
}

@end