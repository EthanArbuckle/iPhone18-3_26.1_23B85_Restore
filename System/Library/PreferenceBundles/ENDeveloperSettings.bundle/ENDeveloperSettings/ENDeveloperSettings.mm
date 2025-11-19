void sub_F6C(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (v3)
  {
    NSLog(@"Failed to clear override configuration file: %@", v3);
    v4 = *(a1 + 32);
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"UNABLE_TO_CLEAR_CONFIGURATION_FILE_TITLE" value:&stru_4318 table:0];

    [*(a1 + 32) presentError:v7 title:v6];
  }

  else
  {
    NSLog(@"Cleared override configuration file.");
  }
}

void sub_1478(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    NSLog(@"Failed to set override configuration file: %@", v3);
    v5 = *(a1 + 32);
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"UNABLE_TO_OVERRIDE_CONFIGURATION_FILE_TITLE" value:&stru_4318 table:0];

    [*(a1 + 32) presentError:v4 title:v7];
  }

  else
  {
    NSLog(@"Set override configuration file");
    v8 = *(a1 + 32);
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [v9 localizedStringForKey:@"SUCCESSULLY SET OVERRIDE CONFIGURATION FILE" value:&stru_4318 table:0];

    v10 = [UIAlertController alertControllerWithTitle:v7 message:0 preferredStyle:1];
    v11 = *(a1 + 32);
    v12 = [NSBundle bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"OK" value:&stru_4318 table:0];

    v14 = [UIAlertAction actionWithTitle:v13 style:0 handler:0];
    [v10 addAction:v14];

    [*(a1 + 32) presentViewController:v10 animated:1 completion:0];
  }

  v15 = +[NSFileManager defaultManager];
  v16 = *(a1 + 40);
  v20 = 0;
  v17 = [v15 removeItemAtURL:v16 error:&v20];
  v18 = v20;

  if ((v17 & 1) == 0)
  {
    v19 = [*(a1 + 40) path];
    NSLog(@"Failed to remove configuration file at: %@. %@", v19, v18);
  }
}