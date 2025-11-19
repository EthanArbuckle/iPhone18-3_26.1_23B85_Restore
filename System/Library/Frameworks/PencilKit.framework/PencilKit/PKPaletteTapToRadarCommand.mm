@interface PKPaletteTapToRadarCommand
- (PKPaletteTapToRadarCommand)initWithDelegate:(id)a3;
- (PKPaletteTapToRadarCommandDelegate)delegate;
- (void)execute;
@end

@implementation PKPaletteTapToRadarCommand

- (PKPaletteTapToRadarCommand)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PKPaletteTapToRadarCommand;
  v5 = [(PKPaletteTapToRadarCommand *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
  }

  return v6;
}

- (void)execute
{
  if (os_variant_has_internal_diagnostics())
  {
    v3 = [(PKPaletteTapToRadarCommand *)self delegate];
    v14 = [v3 paletteTapToRadarCommandConfiguration:self];

    if (v14)
    {
      v4 = [v14 debugSharpenerLog];

      if (v4)
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

        v13 = [v14 presentationViewController];
        [v13 presentViewController:v8 animated:1 completion:0];
      }
    }

    else
    {
      v7 = [MEMORY[0x1E696AD88] defaultCenter];
      [v7 postNotificationName:@"PKPaletteTapToRadarCommandTriggeredNotification" object:self];
    }
  }
}

- (PKPaletteTapToRadarCommandDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end