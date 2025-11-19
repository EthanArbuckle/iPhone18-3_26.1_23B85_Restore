@interface HDClinicalAPIReminder
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToReminder:(id)a3;
- (BOOL)wasPosted;
- (HDClinicalAPIReminder)init;
- (HDClinicalAPIReminder)initWithSource:(id)a3 creationDate:(id)a4 postDate:(id)a5;
- (id)_init;
- (void)_setCreationDate:(id)a3;
- (void)_setPostDate:(id)a3;
- (void)_setSource:(id)a3;
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

- (HDClinicalAPIReminder)initWithSource:(id)a3 creationDate:(id)a4 postDate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = HDClinicalAPIReminder;
  v11 = [(HDClinicalAPIReminder *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(HDClinicalAPIReminder *)v11 _setSource:v8];
    [(HDClinicalAPIReminder *)v12 _setCreationDate:v9];
    [(HDClinicalAPIReminder *)v12 _setPostDate:v10];
  }

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else if ([(HDClinicalAPIReminder *)v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(HDClinicalAPIReminder *)self isEqualToReminder:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqualToReminder:(id)a3
{
  v5 = a3;
  v6 = [(HDClinicalAPIReminder *)self source];
  v7 = [v5 source];
  if (v6 != v7)
  {
    v8 = [v5 source];
    if (!v8)
    {
      v17 = 0;
      goto LABEL_26;
    }

    v3 = v8;
    v9 = [(HDClinicalAPIReminder *)self source];
    v10 = [v5 source];
    if (![v9 isEqual:v10])
    {
      v17 = 0;
LABEL_25:

      goto LABEL_26;
    }

    v32 = v10;
    v33 = v9;
  }

  v11 = [(HDClinicalAPIReminder *)self creationDate];
  v12 = [v5 creationDate];
  if (v11 != v12)
  {
    v13 = [v5 creationDate];
    if (!v13)
    {
      v17 = 0;
LABEL_22:

      goto LABEL_23;
    }

    v14 = v13;
    v15 = [(HDClinicalAPIReminder *)self creationDate];
    v16 = [v5 creationDate];
    if (([v15 isEqualToDate:v16] & 1) == 0)
    {

      v17 = 0;
LABEL_23:
      v25 = v6 == v7;
      goto LABEL_24;
    }

    v28 = v16;
    v29 = v15;
    v30 = v14;
  }

  v18 = [(HDClinicalAPIReminder *)self postDate];
  v19 = [v5 postDate];
  v20 = v19;
  v17 = v18 == v19;
  if (v18 == v19)
  {

    goto LABEL_20;
  }

  v31 = v11;
  v21 = [v5 postDate];
  if (!v21)
  {

LABEL_20:
    if (v11 != v12)
    {
    }

    goto LABEL_22;
  }

  v22 = v21;
  v27 = v3;
  v23 = [(HDClinicalAPIReminder *)self postDate];
  v24 = [v5 postDate];
  v17 = [v23 isEqualToDate:v24];

  if (v31 != v12)
  {
  }

  v25 = v6 == v7;
  v3 = v27;
LABEL_24:
  v10 = v32;
  v9 = v33;
  if (!v25)
  {
    goto LABEL_25;
  }

LABEL_26:

  return v17;
}

- (BOOL)wasPosted
{
  v2 = [(HDClinicalAPIReminder *)self postDate];
  v3 = v2 != 0;

  return v3;
}

- (void)_setSource:(id)a3
{
  v4 = [a3 copy];
  source = self->_source;
  self->_source = v4;

  _objc_release_x1();
}

- (void)_setCreationDate:(id)a3
{
  v4 = [a3 copy];
  creationDate = self->_creationDate;
  self->_creationDate = v4;

  _objc_release_x1();
}

- (void)_setPostDate:(id)a3
{
  v4 = [a3 copy];
  postDate = self->_postDate;
  self->_postDate = v4;

  _objc_release_x1();
}

@end