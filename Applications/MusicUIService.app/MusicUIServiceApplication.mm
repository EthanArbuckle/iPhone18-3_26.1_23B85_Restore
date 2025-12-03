@interface MusicUIServiceApplication
- (id)_keyWindowForScreen:(id)screen;
@end

@implementation MusicUIServiceApplication

- (id)_keyWindowForScreen:(id)screen
{
  screenCopy = screen;
  if ([screenCopy _userInterfaceIdiom] == 3)
  {
    delegate = [(MusicUIServiceApplication *)self delegate];
    v6 = [delegate _keyWindowForScreen:screenCopy];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = MusicUIServiceApplication;
    v6 = [(MusicUIServiceApplication *)&v8 _keyWindowForScreen:screenCopy];
  }

  return v6;
}

@end