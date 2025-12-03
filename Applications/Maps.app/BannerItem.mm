@interface BannerItem
- (BannerItem)initWithGuidanceState:(id)state;
- (void)updateFromGuidanceState:(id)state;
@end

@implementation BannerItem

- (void)updateFromGuidanceState:(id)state
{
  objc_storeStrong(&self->_guidanceState, state);
  v4 = sub_100032C3C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Update existing item: %@", &v5, 0xCu);
  }
}

- (BannerItem)initWithGuidanceState:(id)state
{
  stateCopy = state;
  v9.receiver = self;
  v9.super_class = BannerItem;
  v6 = [(BannerItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_guidanceState, state);
  }

  return v7;
}

@end