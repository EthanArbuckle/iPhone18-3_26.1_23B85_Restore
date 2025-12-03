@interface KPFPlayer
+ (id)createPlayerWithKPFDocument:(id)document bundle:(id)bundle layer:(id)layer;
@end

@implementation KPFPlayer

+ (id)createPlayerWithKPFDocument:(id)document bundle:(id)bundle layer:(id)layer
{
  if (!bundle)
  {
    return 0;
  }

  if ([document isLegacy])
  {
    objc_opt_class();
    v6 = [[CAKPFPlayerController alloc] initWithKPFDocument:TSUDynamicCast() showLayer:layer];
    [(CAKPFPlayerController *)v6 resetToFirstEventAndShouldAutoPlay:0];
  }

  else
  {
    objc_opt_class();
    v6 = [[KPFGingerPlayerController alloc] initWithKPFDocument:TSUDynamicCast() showLayer:layer];
  }

  [(CAKPFPlayerController *)v6 setAllowsShowToEndInternally:1];
  [(CAKPFPlayerController *)v6 setPlaysAutomaticEvents:1];
  return v6;
}

@end