@interface NTKCellularConnectivityAccentImageView
- (int64_t)_filterStyle;
@end

@implementation NTKCellularConnectivityAccentImageView

- (int64_t)_filterStyle
{
  v2 = [(NTKCellularConnectivityImageView *)self filterProvider];
  v3 = [v2 device];
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