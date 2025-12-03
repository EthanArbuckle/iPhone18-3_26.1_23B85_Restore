@interface NTKCellularConnectivityAccentImageView
- (int64_t)_filterStyle;
@end

@implementation NTKCellularConnectivityAccentImageView

- (int64_t)_filterStyle
{
  filterProvider = [(NTKCellularConnectivityImageView *)self filterProvider];
  device = [filterProvider device];
  v4 = NTKShowGossamerUI();

  if (v4)
  {
    return 3;
  }

  else
  {
    return 1;
  }
}

@end