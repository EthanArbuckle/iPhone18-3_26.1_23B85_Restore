@interface MPMoviePlayerViewController
- (MPMoviePlayerViewController)initWithContentURL:(NSURL *)contentURL;
- (void)loadView;
@end

@implementation MPMoviePlayerViewController

- (void)loadView
{
  v3 = [(MPMoviePlayerController *)self->_moviePlayer view];
  [(MPMoviePlayerViewController *)self setView:v3];
}

- (MPMoviePlayerViewController)initWithContentURL:(NSURL *)contentURL
{
  v4 = contentURL;
  v9.receiver = self;
  v9.super_class = MPMoviePlayerViewController;
  v5 = [(MPMoviePlayerViewController *)&v9 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = [[MPMoviePlayerController alloc] initWithContentURL:v4];
    moviePlayer = v5->_moviePlayer;
    v5->_moviePlayer = v6;

    [(MPMoviePlayerController *)v5->_moviePlayer setHostingViewController:v5];
  }

  return v5;
}

@end