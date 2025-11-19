@interface NSNumber
- (id)bc_assertClampedToMinimum:(id)a3 maximum:(id)a4;
- (id)bc_clampedToMinimum:(id)a3 maximum:(id)a4;
- (id)bc_clampedToMinimum:(id)a3 maximum:(id)a4 orSubstitute:(id)a5;
@end

@implementation NSNumber

- (id)bc_clampedToMinimum:(id)a3 maximum:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  if ([(NSNumber *)v8 compare:v6]== NSOrderedAscending)
  {
    v9 = v6;

    v8 = v9;
  }

  if ([(NSNumber *)v8 compare:v7]== &dword_0 + 1)
  {
    v10 = v7;

    v8 = v10;
  }

  return v8;
}

- (id)bc_assertClampedToMinimum:(id)a3 maximum:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([(NSNumber *)self compare:v6]== NSOrderedAscending || [(NSNumber *)self compare:v7]== &dword_0 + 1) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    sub_1ED990(v6, v7, self);
  }

  v8 = [(NSNumber *)self bc_clampedToMinimum:v6 maximum:v7];

  return v8;
}

- (id)bc_clampedToMinimum:(id)a3 maximum:(id)a4 orSubstitute:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = self;
  if ([(NSNumber *)v10 compare:a3]== NSOrderedAscending || [(NSNumber *)v10 compare:v8]== &dword_0 + 1)
  {
    v11 = v9;

    v10 = v11;
  }

  return v10;
}

@end