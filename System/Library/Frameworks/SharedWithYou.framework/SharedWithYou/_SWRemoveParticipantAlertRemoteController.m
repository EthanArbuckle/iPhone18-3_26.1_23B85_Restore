@interface _SWRemoveParticipantAlertRemoteController
+ (id)exportedInterface;
+ (id)serviceViewControllerInterface;
- (_SWRemoveParticipantAlertRemoteControllerDelegate)delegate;
- (void)_promptToRemoveParticipant:(id)a3 fromHighlight:(id)a4 preferredStyle:(int64_t)a5;
- (void)dismissAlert;
- (void)viewServiceDidTerminateWithError:(id)a3;
@end

@implementation _SWRemoveParticipantAlertRemoteController

- (void)viewServiceDidTerminateWithError:(id)a3
{
  v3 = [(_SWRemoveParticipantAlertRemoteController *)self delegate];
  [v3 dismissAlert];
}

- (void)_promptToRemoveParticipant:(id)a3 fromHighlight:(id)a4 preferredStyle:(int64_t)a5
{
  v12 = a3;
  v8 = a4;
  v9 = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(_UIRemoteViewController *)self serviceViewControllerProxy];
    [v11 promptToRemoveParticipant:v12 fromHighlight:v8 usingPreferredStyle:a5];
  }
}

- (void)dismissAlert
{
  v2 = [(_SWRemoveParticipantAlertRemoteController *)self delegate];
  [v2 dismissAlert];
}

+ (id)serviceViewControllerInterface
{
  if (serviceViewControllerInterface_onceToken != -1)
  {
    +[_SWRemoveParticipantAlertRemoteController serviceViewControllerInterface];
  }

  v3 = serviceViewControllerInterface_interface;

  return v3;
}

+ (id)exportedInterface
{
  if (exportedInterface_onceToken[0] != -1)
  {
    +[_SWRemoveParticipantAlertRemoteController exportedInterface];
  }

  v3 = exportedInterface_interface;

  return v3;
}

- (_SWRemoveParticipantAlertRemoteControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end