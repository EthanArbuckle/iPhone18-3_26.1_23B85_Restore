@interface BSUIVibrancyView
+ (BOOL)isDisabled;
- (BSUIVibrancyView)initWithFrame:(CGRect)frame;
- (void)_updateFilterViewsIfNeeded;
- (void)layoutSubviews;
- (void)setConfiguration:(id)configuration;
@end

@implementation BSUIVibrancyView

- (void)_updateFilterViewsIfNeeded
{
  if (self->_needsUpdate.effectFilterViews)
  {
    self->_needsUpdate.effectFilterViews = 0;
    [(BSUIVibrancyView *)self updateFilters];
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = BSUIVibrancyView;
  [(BSUIVibrancyView *)&v3 layoutSubviews];
  [(BSUIVibrancyView *)self _update];
}

+ (BOOL)isDisabled
{
  if (qword_1ED61C810 != -1)
  {
    dispatch_once(&qword_1ED61C810, &__block_literal_global_6);
  }

  return _MergedGlobals_1_0;
}

void __30__BSUIVibrancyView_isDisabled__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  _MergedGlobals_1_0 = [v0 BOOLForKey:@"BSUIVibrancyEffectViewDisabled"];
}

- (BSUIVibrancyView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = BSUIVibrancyView;
  v3 = [(BSUIVibrancyView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(BSUIVibrancyConfiguration);
    [(BSUIVibrancyView *)v3 setConfiguration:v4];
  }

  return v3;
}

- (void)setConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if ((BSEqualObjects() & 1) == 0)
  {
    v4 = [configurationCopy copy];
    configuration = self->_configuration;
    self->_configuration = v4;

    [(BSUIVibrancyView *)self invalidateSubviews];
    [(BSUIVibrancyView *)self _invalidateFilters];
  }
}

@end