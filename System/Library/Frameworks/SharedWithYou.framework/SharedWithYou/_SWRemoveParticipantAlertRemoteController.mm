@interface _SWRemoveParticipantAlertRemoteController
+ (id)exportedInterface;
+ (id)serviceViewControllerInterface;
- (_SWRemoveParticipantAlertRemoteControllerDelegate)delegate;
- (void)_promptToRemoveParticipant:(id)participant fromHighlight:(id)highlight preferredStyle:(int64_t)style;
- (void)dismissAlert;
- (void)viewServiceDidTerminateWithError:(id)error;
@end

@implementation _SWRemoveParticipantAlertRemoteController

- (void)viewServiceDidTerminateWithError:(id)error
{
  delegate = [(_SWRemoveParticipantAlertRemoteController *)self delegate];
  [delegate dismissAlert];
}

- (void)_promptToRemoveParticipant:(id)participant fromHighlight:(id)highlight preferredStyle:(int64_t)style
{
  participantCopy = participant;
  highlightCopy = highlight;
  serviceViewControllerProxy = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    serviceViewControllerProxy2 = [(_UIRemoteViewController *)self serviceViewControllerProxy];
    [serviceViewControllerProxy2 promptToRemoveParticipant:participantCopy fromHighlight:highlightCopy usingPreferredStyle:style];
  }
}

- (void)dismissAlert
{
  delegate = [(_SWRemoveParticipantAlertRemoteController *)self delegate];
  [delegate dismissAlert];
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