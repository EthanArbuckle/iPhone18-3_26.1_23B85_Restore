@interface PKPaletteTapToRadarCommand
- (PKPaletteTapToRadarCommand)initWithDelegate:(id)delegate;
- (PKPaletteTapToRadarCommandDelegate)delegate;
- (void)execute;
@end

@implementation PKPaletteTapToRadarCommand

- (PKPaletteTapToRadarCommand)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = PKPaletteTapToRadarCommand;
  v5 = [(PKPaletteTapToRadarCommand *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v6;
}

- (void)execute
{
  if (os_variant_has_internal_diagnostics())
  {
    delegate = [(PKPaletteTapToRadarCommand *)self delegate];
    v14 = [delegate paletteTapToRadarCommandConfiguration:self];

    if (v14)
    {
      debugSharpenerLog = [v14 debugSharpenerLog];

      if (debugSharpenerLog)
      {
        v5 = [PKPaletteTapToRadarCommandExecution commandExecutionWithConfiguration:v14];
        execution = self->_execution;
        self->_execution = v5;

        [(PKPaletteTapToRadarCommandExecution *)self->_execution run];
      }

      else
      {
        v8 = [MEMORY[0x1E69DC650] alertControllerWithTitle:@"Scribble Problem Reporter" message:@"No Scribble logs available." preferredStyle:1];
        v9 = MEMORY[0x1E69DC648];
        v10 = _PencilKitBundle();
        v11 = [v10 localizedStringForKey:@"Done" value:@"Done" table:@"Localizable"];
        v12 = [v9 actionWithTitle:v11 style:1 handler:0];
        [v8 addAction:v12];

        presentationViewController = [v14 presentationViewController];
        [presentationViewController presentViewController:v8 animated:1 completion:0];
      }
    }

    else
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"PKPaletteTapToRadarCommandTriggeredNotification" object:self];
    }
  }
}

- (PKPaletteTapToRadarCommandDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end