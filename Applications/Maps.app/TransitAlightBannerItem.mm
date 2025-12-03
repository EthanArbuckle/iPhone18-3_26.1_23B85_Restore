@interface TransitAlightBannerItem
- (TransitAlightBannerItem)initWithGuidanceState:(id)state;
- (TransitAlightMessage)alightMessage;
- (id)artwork;
- (id)subtitle;
- (id)title;
@end

@implementation TransitAlightBannerItem

- (id)subtitle
{
  alightMessage = [(TransitAlightBannerItem *)self alightMessage];
  detail = [alightMessage detail];

  return detail;
}

- (id)title
{
  alightMessage = [(TransitAlightBannerItem *)self alightMessage];
  title = [alightMessage title];

  return title;
}

- (id)artwork
{
  alightMessage = [(TransitAlightBannerItem *)self alightMessage];
  artwork = [alightMessage artwork];

  return artwork;
}

- (TransitAlightMessage)alightMessage
{
  guidanceState = [(BannerItem *)self guidanceState];
  alightMessage = [guidanceState alightMessage];

  return alightMessage;
}

- (TransitAlightBannerItem)initWithGuidanceState:(id)state
{
  stateCopy = state;
  v9.receiver = self;
  v9.super_class = TransitAlightBannerItem;
  v5 = [(BannerItem *)&v9 initWithGuidanceState:stateCopy];
  if (v5)
  {
    v6 = [stateCopy uniqueIdForBannerType:2];
    uniqueId = v5->super._uniqueId;
    v5->super._uniqueId = v6;
  }

  return v5;
}

@end