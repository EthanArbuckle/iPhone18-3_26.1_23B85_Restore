@interface HDClinicalAPIReminder
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToReminder:(id)reminder;
- (BOOL)wasPosted;
- (HDClinicalAPIReminder)init;
- (HDClinicalAPIReminder)initWithSource:(id)source creationDate:(id)date postDate:(id)postDate;
- (id)_init;
- (void)_setCreationDate:(id)date;
- (void)_setPostDate:(id)date;
- (void)_setSource:(id)source;
@end

@implementation HDClinicalAPIReminder

- (HDClinicalAPIReminder)init
{
  v3 = NSStringFromSelector(a2);
  [NSException raise:NSInvalidArgumentException format:@"The -%@ method is not available on %@", v3, objc_opt_class()];

  return 0;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = HDClinicalAPIReminder;
  return [(HDClinicalAPIReminder *)&v3 init];
}

- (HDClinicalAPIReminder)initWithSource:(id)source creationDate:(id)date postDate:(id)postDate
{
  sourceCopy = source;
  dateCopy = date;
  postDateCopy = postDate;
  v14.receiver = self;
  v14.super_class = HDClinicalAPIReminder;
  v11 = [(HDClinicalAPIReminder *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(HDClinicalAPIReminder *)v11 _setSource:sourceCopy];
    [(HDClinicalAPIReminder *)v12 _setCreationDate:dateCopy];
    [(HDClinicalAPIReminder *)v12 _setPostDate:postDateCopy];
  }

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else if ([(HDClinicalAPIReminder *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = [(HDClinicalAPIReminder *)self isEqualToReminder:equalCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqualToReminder:(id)reminder
{
  reminderCopy = reminder;
  source = [(HDClinicalAPIReminder *)self source];
  source2 = [reminderCopy source];
  if (source != source2)
  {
    source3 = [reminderCopy source];
    if (!source3)
    {
      v17 = 0;
      goto LABEL_26;
    }

    v3 = source3;
    source4 = [(HDClinicalAPIReminder *)self source];
    source5 = [reminderCopy source];
    if (![source4 isEqual:source5])
    {
      v17 = 0;
LABEL_25:

      goto LABEL_26;
    }

    v32 = source5;
    v33 = source4;
  }

  creationDate = [(HDClinicalAPIReminder *)self creationDate];
  creationDate2 = [reminderCopy creationDate];
  if (creationDate != creationDate2)
  {
    creationDate3 = [reminderCopy creationDate];
    if (!creationDate3)
    {
      v17 = 0;
LABEL_22:

      goto LABEL_23;
    }

    v14 = creationDate3;
    creationDate4 = [(HDClinicalAPIReminder *)self creationDate];
    creationDate5 = [reminderCopy creationDate];
    if (([creationDate4 isEqualToDate:creationDate5] & 1) == 0)
    {

      v17 = 0;
LABEL_23:
      v25 = source == source2;
      goto LABEL_24;
    }

    v28 = creationDate5;
    v29 = creationDate4;
    v30 = v14;
  }

  postDate = [(HDClinicalAPIReminder *)self postDate];
  postDate2 = [reminderCopy postDate];
  v20 = postDate2;
  v17 = postDate == postDate2;
  if (postDate == postDate2)
  {

    goto LABEL_20;
  }

  v31 = creationDate;
  postDate3 = [reminderCopy postDate];
  if (!postDate3)
  {

LABEL_20:
    if (creationDate != creationDate2)
    {
    }

    goto LABEL_22;
  }

  v22 = postDate3;
  v27 = v3;
  postDate4 = [(HDClinicalAPIReminder *)self postDate];
  postDate5 = [reminderCopy postDate];
  v17 = [postDate4 isEqualToDate:postDate5];

  if (v31 != creationDate2)
  {
  }

  v25 = source == source2;
  v3 = v27;
LABEL_24:
  source5 = v32;
  source4 = v33;
  if (!v25)
  {
    goto LABEL_25;
  }

LABEL_26:

  return v17;
}

- (BOOL)wasPosted
{
  postDate = [(HDClinicalAPIReminder *)self postDate];
  v3 = postDate != 0;

  return v3;
}

- (void)_setSource:(id)source
{
  v4 = [source copy];
  source = self->_source;
  self->_source = v4;

  _objc_release_x1();
}

- (void)_setCreationDate:(id)date
{
  v4 = [date copy];
  creationDate = self->_creationDate;
  self->_creationDate = v4;

  _objc_release_x1();
}

- (void)_setPostDate:(id)date
{
  v4 = [date copy];
  postDate = self->_postDate;
  self->_postDate = v4;

  _objc_release_x1();
}

@end