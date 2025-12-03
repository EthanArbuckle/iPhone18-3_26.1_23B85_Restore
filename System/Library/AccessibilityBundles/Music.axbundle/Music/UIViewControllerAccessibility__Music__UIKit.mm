@interface UIViewControllerAccessibility__Music__UIKit
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_axIsViewControllerInLibrary;
- (void)didChangeVoiceOverOrSwitchControlStatus:(id)status;
- (void)viewDidLoad;
@end

@implementation UIViewControllerAccessibility__Music__UIKit

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"Music.LibraryAlbumsViewController"];
  [validationsCopy validateClass:@"Music.LibraryArtistsListViewController"];
  [validationsCopy validateClass:@"Music.LibraryArtistDetailViewController"];
  [validationsCopy validateClass:@"Music.LibraryGenresViewController"];
  [validationsCopy validateClass:@"Music.LibraryComposersViewController"];
  [validationsCopy validateClass:@"Music.LibraryPlaylistsViewController"];
  [validationsCopy validateClass:@"Music.LibraryMusicVideosViewController"];
  [validationsCopy validateClass:@"Music.LibraryMainViewController"];
  [validationsCopy validateClass:@"Music.LibraryRecentlyAddedViewController"];
  [validationsCopy validateClass:@"Music.LibrarySongsViewController"];
  [validationsCopy validateClass:@"Music.LibraryTVShowsMoviesViewController"];
  [validationsCopy validateClass:@"Music.LibraryTVEpisodesViewController"];
  [validationsCopy validateClass:@"Music.LibraryDownloadingViewController"];
  [validationsCopy validateClass:@"UIViewController" hasInstanceMethod:@"navigationItem" withFullSignature:{"@", 0}];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = UIViewControllerAccessibility__Music__UIKit;
  [(UIViewControllerAccessibility__Music__UIKit *)&v5 viewDidLoad];
  defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter addObserver:self selector:sel_didChangeVoiceOverOrSwitchControlStatus_ name:*MEMORY[0x29EDC8000] object:0];

  defaultCenter2 = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_didChangeVoiceOverOrSwitchControlStatus_ name:*MEMORY[0x29EDC7F48] object:0];

  [(UIViewControllerAccessibility__Music__UIKit *)self didChangeVoiceOverOrSwitchControlStatus:0];
  if ([(UIViewControllerAccessibility__Music__UIKit *)self _axIsViewControllerInLibrary])
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
  }
}

- (void)didChangeVoiceOverOrSwitchControlStatus:(id)status
{
  statusCopy = status;
  objc_opt_class();
  v5 = [(UIViewControllerAccessibility__Music__UIKit *)self safeValueForKey:@"navigationItem"];
  v6 = __UIAccessibilityCastAsClass();

  v7 = !UIAccessibilityIsVoiceOverRunning() && !UIAccessibilityIsSwitchControlRunning();
  [v6 setHidesSearchBarWhenScrolling:v7];
}

- (BOOL)_axIsViewControllerInLibrary
{
  MEMORY[0x29C2E2910](@"Music.LibraryAlbumsViewController", a2);
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_13;
  }

  MEMORY[0x29C2E2910](@"Music.LibraryArtistsListViewController");
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_13;
  }

  MEMORY[0x29C2E2910](@"Music.LibraryArtistDetailViewController");
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_13;
  }

  MEMORY[0x29C2E2910](@"Music.LibraryGenresViewController");
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_13;
  }

  MEMORY[0x29C2E2910](@"Music.LibraryComposersViewController");
  if (objc_opt_isKindOfClass() & 1) != 0 || (MEMORY[0x29C2E2910](@"Music.LibraryPlaylistsViewController"), (objc_opt_isKindOfClass()) || (MEMORY[0x29C2E2910](@"Music.LibraryMusicVideosViewController"), (objc_opt_isKindOfClass()) || (MEMORY[0x29C2E2910](@"Music.LibraryMainViewController"), (objc_opt_isKindOfClass()) || (MEMORY[0x29C2E2910](@"Music.LibraryRecentlyAddedViewController"), (objc_opt_isKindOfClass()) || (MEMORY[0x29C2E2910](@"Music.LibrarySongsViewController"), (objc_opt_isKindOfClass()) || (MEMORY[0x29C2E2910](@"Music.LibraryTVShowsMoviesViewController"), (objc_opt_isKindOfClass()) || (MEMORY[0x29C2E2910](@"Music.LibraryTVEpisodesViewController"), (objc_opt_isKindOfClass()))
  {
LABEL_13:
    isKindOfClass = 1;
  }

  else
  {
    MEMORY[0x29C2E2910](@"Music.LibraryDownloadingViewController");
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

@end