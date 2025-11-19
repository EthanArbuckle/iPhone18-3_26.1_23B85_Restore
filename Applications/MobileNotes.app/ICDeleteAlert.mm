@interface ICDeleteAlert
+ (BOOL)shouldShowAsAlertWithSender:(id)a3 canCancel:(BOOL)a4;
+ (id)confirmationForAlertType:(unint64_t)a3 count:(unint64_t)a4 sender:(id)a5;
+ (id)messageForAlertType:(unint64_t)a3 count:(unint64_t)a4;
+ (id)titleForAlertType:(unint64_t)a3 count:(unint64_t)a4;
- (BOOL)canCancel;
- (BOOL)shouldShowAsAlertForSender:(id)a3;
- (ICDeleteAlert)initWithAlertType:(unint64_t)a3 count:(unint64_t)a4;
- (NSString)message;
- (NSString)title;
- (id)confirmationStringForSender:(id)a3;
- (id)description;
@end

@implementation ICDeleteAlert

- (ICDeleteAlert)initWithAlertType:(unint64_t)a3 count:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = ICDeleteAlert;
  result = [(ICDeleteAlert *)&v7 init];
  if (result)
  {
    result->_alertType = a3;
    result->_countOfObjects = a4;
  }

  return result;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSString stringWithFormat:@"<%@:%p> alertType = %lu, countOfObjects = %lu", v4, self, self->_alertType, self->_countOfObjects];

  return v5;
}

- (NSString)title
{
  v3 = objc_opt_class();
  alertType = self->_alertType;
  countOfObjects = self->_countOfObjects;

  return [v3 titleForAlertType:alertType count:countOfObjects];
}

- (NSString)message
{
  v3 = objc_opt_class();
  alertType = self->_alertType;
  countOfObjects = self->_countOfObjects;

  return [v3 messageForAlertType:alertType count:countOfObjects];
}

- (id)confirmationStringForSender:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() confirmationForAlertType:self->_alertType count:self->_countOfObjects sender:v4];

  return v5;
}

- (BOOL)canCancel
{
  v3 = objc_opt_class();
  alertType = self->_alertType;

  return [v3 canCancelAlertType:alertType];
}

- (BOOL)shouldShowAsAlertForSender:(id)a3
{
  v4 = a3;
  LOBYTE(self) = [objc_opt_class() shouldShowAsAlertWithSender:v4 canCancel:{-[ICDeleteAlert canCancel](self, "canCancel")}];

  return self;
}

+ (id)titleForAlertType:(unint64_t)a3 count:(unint64_t)a4
{
  v4 = &stru_100661CF0;
  switch(a3)
  {
    case 0uLL:
    case 4uLL:
    case 8uLL:
      v9 = +[ICDeviceSupport deviceIsMac];
      v6 = +[NSBundle mainBundle];
      if (v9)
      {
        v7 = @"Are you sure you want to delete this shared note?";
      }

      else
      {
        v7 = @"Delete Shared Note?";
      }

      goto LABEL_27;
    case 1uLL:
    case 2uLL:
    case 5uLL:
    case 6uLL:
    case 9uLL:
      v5 = +[ICDeviceSupport deviceIsMac];
      v6 = +[NSBundle mainBundle];
      if (v5)
      {
        v7 = @"Are you sure you want to delete these shared notes?";
      }

      else
      {
        v7 = @"Delete Shared Notes?";
      }

      goto LABEL_27;
    case 3uLL:
    case 7uLL:
    case 0xAuLL:
      v8 = +[ICDeviceSupport deviceIsMac];
      v6 = +[NSBundle mainBundle];
      if (v8)
      {
        v7 = @"Are you sure you want to delete this shared folder?";
      }

      else
      {
        v7 = @"Delete Shared Folder?";
      }

      goto LABEL_27;
    case 0xBuLL:
      v16 = +[ICDeviceSupport deviceIsMac];
      v6 = +[NSBundle mainBundle];
      if (v16)
      {
        v7 = @"Are you sure you want to delete the selected notes?";
      }

      else
      {
        v7 = @"Delete Notes?";
      }

      goto LABEL_27;
    case 0xCuLL:
      v17 = +[ICDeviceSupport deviceIsMac];
      v6 = +[NSBundle mainBundle];
      if (v17)
      {
        v7 = @"Are you sure you want to delete the selected note?";
      }

      else
      {
        v7 = @"Delete Note?";
      }

      goto LABEL_27;
    case 0xDuLL:
      v15 = +[ICDeviceSupport deviceIsMac];
      v6 = +[NSBundle mainBundle];
      if (v15)
      {
        v7 = @"Are you sure you want to delete this folder?";
      }

      else
      {
        v7 = @"Delete Folder?";
      }

LABEL_27:
      v14 = v6;
      goto LABEL_28;
    case 0xEuLL:
      v11 = +[ICDeviceSupport deviceIsMac];
      v12 = +[NSBundle mainBundle];
      v6 = v12;
      if (v11)
      {
        v13 = @"Are you sure you want to delete the %lu notes permanently?";
      }

      else
      {
        v13 = @"Delete %lu Notes?";
      }

      v18 = [v12 localizedStringForKey:v13 value:&stru_100661CF0 table:0];
      v4 = [NSString localizedStringWithFormat:v18, a4];

      goto LABEL_29;
    case 0xFuLL:
      v14 = +[NSBundle mainBundle];
      v6 = v14;
      v7 = @"Deleted notes are moved to the Recently Deleted folder.";
      goto LABEL_28;
    case 0x11uLL:
      v14 = +[NSBundle mainBundle];
      v6 = v14;
      v7 = @"Delete Smart Folder?";
LABEL_28:
      v4 = [v14 localizedStringForKey:v7 value:&stru_100661CF0 table:0];
LABEL_29:

      break;
    default:
      break;
  }

  return v4;
}

+ (id)messageForAlertType:(unint64_t)a3 count:(unint64_t)a4
{
  v4 = 0;
  switch(a3)
  {
    case 0uLL:
    case 8uLL:
      v5 = +[NSBundle mainBundle];
      v6 = v5;
      v7 = @"If you delete this note, other people will no longer have access to it and it will be deleted from all of their devices.";
      goto LABEL_15;
    case 1uLL:
    case 9uLL:
      v5 = +[NSBundle mainBundle];
      v6 = v5;
      v7 = @"If you delete these notes, other people will no longer have access to them and they will be deleted from all of their devices.";
      goto LABEL_15;
    case 2uLL:
      v5 = +[NSBundle mainBundle];
      v6 = v5;
      v7 = @"One or more notes are shared. If you delete these notes, other people will no longer have access to them and they will be deleted from all of their devices.";
      goto LABEL_15;
    case 3uLL:
    case 0xAuLL:
      v5 = +[NSBundle mainBundle];
      v6 = v5;
      v7 = @"If you delete this folder, other people will no longer have access to it and it will be deleted from all of their devices.";
      goto LABEL_15;
    case 4uLL:
      v5 = +[NSBundle mainBundle];
      v6 = v5;
      v7 = @"It will be deleted on all of your devices. To reopen the note, click the link you were invited with.";
      goto LABEL_15;
    case 5uLL:
      v5 = +[NSBundle mainBundle];
      v6 = v5;
      v7 = @"They will be deleted on all of your devices. To reopen the notes, click the links you were invited with.";
      goto LABEL_15;
    case 6uLL:
      v5 = +[NSBundle mainBundle];
      v6 = v5;
      v7 = @"One or more notes are shared. They will be deleted on all of your devices. To reopen the notes, click the links you were invited with.";
      goto LABEL_15;
    case 7uLL:
      v5 = +[NSBundle mainBundle];
      v6 = v5;
      v7 = @"It will be deleted from all of your devices. To rejoin this shared folder, click the link you were invited with.";
      goto LABEL_15;
    case 0xDuLL:
      v5 = +[NSBundle mainBundle];
      v6 = v5;
      v7 = @"All notes and any subfolders will be deleted.";
      goto LABEL_15;
    case 0xEuLL:
      if ((+[ICDeviceSupport deviceIsMac]& 1) != 0)
      {
        v5 = +[NSBundle mainBundle];
        v6 = v5;
        v7 = @"You cannot undo this action.";
LABEL_15:
        v4 = [v5 localizedStringForKey:v7 value:&stru_100661CF0 table:0];
      }

      else
      {
        v6 = +[NSBundle mainBundle];
        v10 = [v6 localizedStringForKey:@"These %lu notes will be deleted. This action cannot be undone." value:&stru_100661CF0 table:0];
        v4 = [NSString localizedStringWithFormat:v10, a4];
      }

LABEL_17:

      return v4;
    case 0xFuLL:
      v5 = +[NSBundle mainBundle];
      v6 = v5;
      v7 = @"You can recover or remove from Recently Deleted within 30 days.";
      goto LABEL_15;
    case 0x11uLL:
      v5 = +[NSBundle mainBundle];
      v6 = v5;
      v7 = @"Deleting this Smart Folder won’t affect its notes, which will remain in their folders.";
      goto LABEL_15;
    default:
      goto LABEL_17;
  }
}

+ (id)confirmationForAlertType:(unint64_t)a3 count:(unint64_t)a4 sender:(id)a5
{
  v8 = a5;
  v9 = [a1 canCancelAlertType:a3];
  v10 = +[NSBundle mainBundle];
  v11 = v10;
  if (v9)
  {
    v12 = @"Delete";
  }

  else
  {
    v12 = @"OK";
  }

  v13 = [v10 localizedStringForKey:v12 value:&stru_100661CF0 table:0];

  v14 = [a1 shouldShowAsAlertWithSender:v8 canCancel:v9];
  if (v14 && (+[UIDevice ic_isVision]& 1) == 0)
  {
    a4 = v13;
  }

  else
  {
    switch(a3)
    {
      case 0uLL:
      case 4uLL:
      case 8uLL:
        v15 = +[NSBundle mainBundle];
        v16 = v15;
        v17 = @"Delete Shared Note";
        goto LABEL_18;
      case 1uLL:
      case 2uLL:
      case 5uLL:
      case 6uLL:
      case 9uLL:
        v15 = +[NSBundle mainBundle];
        v16 = v15;
        v17 = @"Delete Shared Notes";
        goto LABEL_18;
      case 3uLL:
      case 7uLL:
      case 0xAuLL:
        v15 = +[NSBundle mainBundle];
        v16 = v15;
        v17 = @"Delete Shared Folder";
        goto LABEL_18;
      case 0xBuLL:
        v15 = +[NSBundle mainBundle];
        v16 = v15;
        v17 = @"Delete Notes";
        goto LABEL_18;
      case 0xCuLL:
        v15 = +[NSBundle mainBundle];
        v16 = v15;
        v17 = @"Delete Note";
        goto LABEL_18;
      case 0xDuLL:
        v15 = +[NSBundle mainBundle];
        v16 = v15;
        v17 = @"Delete Folder";
        goto LABEL_18;
      case 0xEuLL:
        v18 = +[NSBundle mainBundle];
        v19 = [v18 localizedStringForKey:@"Delete %lu Notes" value:&stru_100661CF0 table:0];
        a4 = [NSString localizedStringWithFormat:v19, a4];

        break;
      case 0xFuLL:
        v15 = +[NSBundle mainBundle];
        v16 = v15;
        v17 = @"OK";
        goto LABEL_18;
      case 0x10uLL:
        v15 = +[NSBundle mainBundle];
        v16 = v15;
        v17 = @"Delete All";
        goto LABEL_18;
      case 0x11uLL:
        v15 = +[NSBundle mainBundle];
        v16 = v15;
        v17 = @"Delete Smart Folder";
LABEL_18:
        a4 = [v15 localizedStringForKey:v17 value:&stru_100661CF0 table:0];

        break;
      default:
        break;
    }
  }

  return a4;
}

+ (BOOL)shouldShowAsAlertWithSender:(id)a3 canCancel:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    if (!v4)
    {
      v6 = 1;
      goto LABEL_8;
    }

LABEL_7:
    v6 = +[UIDevice ic_isVision];
    goto LABEL_8;
  }

  v6 = 1;
  if ((+[UIDevice ic_isiPad]& 1) == 0 && v4)
  {
    goto LABEL_7;
  }

LABEL_8:

  return v6;
}

@end