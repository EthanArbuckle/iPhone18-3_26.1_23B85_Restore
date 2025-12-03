@interface NTKCellularConnectivityImageProvider
- (NTKCellularConnectivityImageProvider)init;
- (NTKCellularConnectivityImageProvider)initWithDotLayoutConstraints:(id)constraints;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation NTKCellularConnectivityImageProvider

- (NTKCellularConnectivityImageProvider)init
{
  v5.receiver = self;
  v5.super_class = NTKCellularConnectivityImageProvider;
  v2 = [(NTKCellularConnectivityImageProvider *)&v5 initWithSystemName:@"antenna.radiowaves.left.and.right"];
  v3 = v2;
  if (v2)
  {
    [(NTKCellularConnectivityImageProvider *)v2 setImageViewCreationHandler:&stru_8260];
  }

  return v3;
}

- (NTKCellularConnectivityImageProvider)initWithDotLayoutConstraints:(id)constraints
{
  v6.receiver = self;
  v6.super_class = NTKCellularConnectivityImageProvider;
  v3 = [(NTKCellularConnectivityImageProvider *)&v6 initWithSystemName:@"antenna.radiowaves.left.and.right"];
  v4 = v3;
  if (v3)
  {
    [(NTKCellularConnectivityImageProvider *)v3 setImageViewCreationHandler:&stru_8280];
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = NTKCellularConnectivityImageProvider;
  v5 = [(NTKCellularConnectivityImageProvider *)&v12 copyWithZone:?];
  v6 = v5;
  if (v5)
  {
    [v5 setNeedsPlatter:self->_needsPlatter];
    [v6 setPlatterAlpha:self->_platterAlpha];
    v7 = [(UIColor *)self->_platterOverrideColor copyWithZone:zone];
    [v6 setPlatterOverrideColor:v7];

    v8 = [(NSNumber *)self->_imageSize copyWithZone:zone];
    [v6 setImageSize:v8];

    v9 = [(NSNumber *)self->_imageVerticalOffsetScaleFromWidth copyWithZone:zone];
    [v6 setImageVerticalOffsetScaleFromWidth:v9];

    [v6 setImageAlpha:self->_imageAlpha];
    v10 = [(UIColor *)self->_imageOverrideColor copyWithZone:zone];
    [v6 setImageOverrideColor:v10];

    [v6 setDotLayoutConstraints:self->_dotLayoutConstraints];
    [v6 setNumDotsFilled:self->_numDotsFilled];
    [v6 setShowsAsDots:self->_showsAsDots];
    [v6 setDisconnected:self->_disconnected];
    [v6 setAnimateSearchingState:self->_animateSearchingState];
    [v6 setDotColorOptions:self->_dotColorOptions];
  }

  return v6;
}

@end