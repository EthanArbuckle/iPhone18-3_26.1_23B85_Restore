@interface KPFPlayer
+ (id)createPlayerWithKPFDocument:(id)a3 bundle:(id)a4 layer:(id)a5;
@end

@implementation KPFPlayer

+ (id)createPlayerWithKPFDocument:(id)a3 bundle:(id)a4 layer:(id)a5
{
  if (!a4)
  {
    return 0;
  }

  if ([a3 isLegacy])
  {
    objc_opt_class();
    v6 = [[CAKPFPlayerController alloc] initWithKPFDocument:TSUDynamicCast() showLayer:a5];
    [(CAKPFPlayerController *)v6 resetToFirstEventAndShouldAutoPlay:0];
  }

  else
  {
    objc_opt_class();
    v6 = [[KPFGingerPlayerController alloc] initWithKPFDocument:TSUDynamicCast() showLayer:a5];
  }

  [(CAKPFPlayerController *)v6 setAllowsShowToEndInternally:1];
  [(CAKPFPlayerController *)v6 setPlaysAutomaticEvents:1];
  return v6;
}

@end