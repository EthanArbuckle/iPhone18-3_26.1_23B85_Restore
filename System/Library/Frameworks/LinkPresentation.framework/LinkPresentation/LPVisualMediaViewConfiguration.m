@interface LPVisualMediaViewConfiguration
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation LPVisualMediaViewConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [LPVisualMediaViewConfiguration allocWithZone:a3];
  if (v4)
  {
    [(LPVisualMediaViewConfiguration *)v4 setDisablePlayback:[(LPVisualMediaViewConfiguration *)self disablePlayback]];
    [(LPVisualMediaViewConfiguration *)v4 setDisablePlaybackControls:[(LPVisualMediaViewConfiguration *)self disablePlaybackControls]];
    [(LPVisualMediaViewConfiguration *)v4 setDisableAutoPlay:[(LPVisualMediaViewConfiguration *)self disableAutoPlay]];
    [(LPVisualMediaViewConfiguration *)v4 setAllowsLoadingMediaWithAutoPlayDisabled:[(LPVisualMediaViewConfiguration *)self allowsLoadingMediaWithAutoPlayDisabled]];
    [(LPVisualMediaViewConfiguration *)self fullScreenTransitionCornerRadius];
    [(LPVisualMediaViewConfiguration *)v4 setFullScreenTransitionCornerRadius:?];
    v5 = v4;
  }

  return v4;
}

@end