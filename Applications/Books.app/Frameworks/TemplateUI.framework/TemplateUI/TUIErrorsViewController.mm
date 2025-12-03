@interface TUIErrorsViewController
- (TUIErrorsViewController)initWithErrors:(id)errors;
- (id)errorTextFromError:(id)error;
- (id)infoTextFromError:(id)error;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation TUIErrorsViewController

- (TUIErrorsViewController)initWithErrors:(id)errors
{
  errorsCopy = errors;
  v9.receiver = self;
  v9.super_class = TUIErrorsViewController;
  v5 = [(TUIErrorsViewController *)&v9 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = [errorsCopy copy];
    errors = v5->_errors;
    v5->_errors = v6;
  }

  return v5;
}

- (id)errorTextFromError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v5 = [domain isEqualToString:@"TUIErrorDomain"];

  if (v5)
  {
    v6 = TUIErrorToString([errorCopy code]);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)infoTextFromError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v5 = [domain isEqualToString:@"TUIErrorDomain"];

  if (v5)
  {
    userInfo = [errorCopy userInfo];
    v7 = [userInfo objectForKeyedSubscript:@"TUIErrorInfoKey"];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = [userInfo objectForKeyedSubscript:NSLocalizedDescriptionKey];
    }

    v11 = v9;

    v10 = [v11 description];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  errors = self->_errors;
  viewCopy = view;
  v8 = -[NSArray objectAtIndexedSubscript:](errors, "objectAtIndexedSubscript:", [path row]);
  v9 = [viewCopy dequeueReusableCellWithIdentifier:@"cell"];

  if (!v9)
  {
    v9 = [[UITableViewCell alloc] initWithStyle:3 reuseIdentifier:@"cell"];
  }

  v10 = [(TUIErrorsViewController *)self infoTextFromError:v8];
  textLabel = [v9 textLabel];
  [textLabel setText:v10];

  v12 = [(TUIErrorsViewController *)self errorTextFromError:v8];
  detailTextLabel = [v9 detailTextLabel];
  [detailTextLabel setText:v12];

  return v9;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = -[NSArray objectAtIndexedSubscript:](self->_errors, "objectAtIndexedSubscript:", [pathCopy row]);
  domain = [v8 domain];
  v10 = [domain isEqualToString:@"TUIErrorDomain"];

  if (v10)
  {
    userInfo = [v8 userInfo];
    v12 = [userInfo objectForKeyedSubscript:@"TUIErrorLocationsKey"];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_18DCEC;
    v24[3] = &unk_25E1B8;
    v13 = objc_alloc_init(NSMutableString);
    v25 = v13;
    [v12 enumerateObjectsWithOptions:2 usingBlock:v24];
    v14 = [(TUIErrorsViewController *)self infoTextFromError:v8];
    v15 = [UIAlertController alertControllerWithTitle:v14 message:v13 preferredStyle:0];

    objc_initWeak(&location, self);
    v17 = _NSConcreteStackBlock;
    v18 = 3221225472;
    v19 = sub_18DD1C;
    v20 = &unk_263D28;
    objc_copyWeak(&v22, &location);
    v21 = pathCopy;
    v16 = [UIAlertAction actionWithTitle:@"Done" style:0 handler:&v17];
    [v15 addAction:{v16, v17, v18, v19, v20}];

    [(TUIErrorsViewController *)self presentViewController:v15 animated:1 completion:0];
    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }
}

@end