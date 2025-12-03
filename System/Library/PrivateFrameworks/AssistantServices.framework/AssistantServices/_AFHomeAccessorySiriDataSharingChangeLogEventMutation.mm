@interface _AFHomeAccessorySiriDataSharingChangeLogEventMutation
- (_AFHomeAccessorySiriDataSharingChangeLogEventMutation)initWithBase:(id)base;
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
    logEventIdentifier = self->_logEventIdentifier;
  }

  else
  {
    logEventIdentifier = [(AFHomeAccessorySiriDataSharingChangeLogEvent *)self->_base logEventIdentifier];
  }

  return logEventIdentifier;
}

- (id)getSchemaVersion
{
  if ((*&self->_mutationFlags & 0x100) != 0)
  {
    schemaVersion = self->_schemaVersion;
  }

  else
  {
    schemaVersion = [(AFHomeAccessorySiriDataSharingChangeLogEvent *)self->_base schemaVersion];
  }

  return schemaVersion;
}

- (id)getProductVersion
{
  if ((*&self->_mutationFlags & 0x80) != 0)
  {
    productVersion = self->_productVersion;
  }

  else
  {
    productVersion = [(AFHomeAccessorySiriDataSharingChangeLogEvent *)self->_base productVersion];
  }

  return productVersion;
}

- (id)getBuildVersion
{
  if ((*&self->_mutationFlags & 0x40) != 0)
  {
    buildVersion = self->_buildVersion;
  }

  else
  {
    buildVersion = [(AFHomeAccessorySiriDataSharingChangeLogEvent *)self->_base buildVersion];
  }

  return buildVersion;
}

- (id)getChangeReason
{
  if ((*&self->_mutationFlags & 0x20) != 0)
  {
    changeReason = self->_changeReason;
  }

  else
  {
    changeReason = [(AFHomeAccessorySiriDataSharingChangeLogEvent *)self->_base changeReason];
  }

  return changeReason;
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
    date = self->_date;
  }

  else
  {
    date = [(AFHomeAccessorySiriDataSharingChangeLogEvent *)self->_base date];
  }

  return date;
}

- (_AFHomeAccessorySiriDataSharingChangeLogEventMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _AFHomeAccessorySiriDataSharingChangeLogEventMutation;
  v6 = [(_AFHomeAccessorySiriDataSharingChangeLogEventMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end