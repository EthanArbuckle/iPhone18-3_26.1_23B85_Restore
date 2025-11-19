@interface BannerItem
- (BannerItem)initWithGuidanceState:(id)a3;
- (void)updateFromGuidanceState:(id)a3;
@end

@implementation BannerItem

- (void)updateFromGuidanceState:(id)a3
{
  objc_storeStrong(&self->_guidanceState, a3);
  v4 = sub_100032C3C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Update existing item: %@", &v5, 0xCu);
  }
}

- (BannerItem)initWithGuidanceState:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BannerItem;
  v6 = [(BannerItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_guidanceState, a3);
  }

  return v7;
}

@end