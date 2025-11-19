@interface _AFHomeAccessorySiriDataSharingChangeLogEventMutation
- (_AFHomeAccessorySiriDataSharingChangeLogEventMutation)initWithBase:(id)a3;
- (id)getBuildVersion;
- (id)getChangeReason;
- (id)getDate;
- (id)getLogEventIdentifier;
- (id)getProductVersion;
- (id)getSchemaVersion;
- (int64_t)getChangeSource;
- (int64_t)getNewOptInStatus;
- (int64_t)getPreviousOptInStatus;
@end

@implementation _AFHomeAccessorySiriDataSharingChangeLogEventMutation

- (id)getLogEventIdentifier
{
  if ((*&self->_mutationFlags & 0x200) != 0)
  {
    v2 = self->_logEventIdentifier;
  }

  else
  {
    v2 = [(AFHomeAccessorySiriDataSharingChangeLogEvent *)self->_base logEventIdentifier];
  }

  return v2;
}

- (id)getSchemaVersion
{
  if ((*&self->_mutationFlags & 0x100) != 0)
  {
    v2 = self->_schemaVersion;
  }

  else
  {
    v2 = [(AFHomeAccessorySiriDataSharingChangeLogEvent *)self->_base schemaVersion];
  }

  return v2;
}

- (id)getProductVersion
{
  if ((*&self->_mutationFlags & 0x80) != 0)
  {
    v2 = self->_productVersion;
  }

  else
  {
    v2 = [(AFHomeAccessorySiriDataSharingChangeLogEvent *)self->_base productVersion];
  }

  return v2;
}

- (id)getBuildVersion
{
  if ((*&self->_mutationFlags & 0x40) != 0)
  {
    v2 = self->_buildVersion;
  }

  else
  {
    v2 = [(AFHomeAccessorySiriDataSharingChangeLogEvent *)self->_base buildVersion];
  }

  return v2;
}

- (id)getChangeReason
{
  if ((*&self->_mutationFlags & 0x20) != 0)
  {
    v2 = self->_changeReason;
  }

  else
  {
    v2 = [(AFHomeAccessorySiriDataSharingChangeLogEvent *)self->_base changeReason];
  }

  return v2;
}

- (int64_t)getChangeSource
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    return self->_changeSource;
  }

  else
  {
    return [(AFHomeAccessorySiriDataSharingChangeLogEvent *)self->_base changeSource];
  }
}

- (int64_t)getNewOptInStatus
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    return self->_newOptInStatus;
  }

  else
  {
    return [(AFHomeAccessorySiriDataSharingChangeLogEvent *)self->_base newOptInStatus];
  }
}

- (int64_t)getPreviousOptInStatus
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    return self->_previousOptInStatus;
  }

  else
  {
    return [(AFHomeAccessorySiriDataSharingChangeLogEvent *)self->_base previousOptInStatus];
  }
}

- (id)getDate
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    v2 = self->_date;
  }

  else
  {
    v2 = [(AFHomeAccessorySiriDataSharingChangeLogEvent *)self->_base date];
  }

  return v2;
}

- (_AFHomeAccessorySiriDataSharingChangeLogEventMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _AFHomeAccessorySiriDataSharingChangeLogEventMutation;
  v6 = [(_AFHomeAccessorySiriDataSharingChangeLogEventMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end