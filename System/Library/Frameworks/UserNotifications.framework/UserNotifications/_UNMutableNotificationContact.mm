@interface _UNMutableNotificationContact
- (id)copyWithZone:(_NSZone *)a3;
- (void)setCnContactFullname:(id)a3;
- (void)setCnContactIdentifier:(id)a3;
- (void)setCustomIdentifier:(id)a3;
- (void)setDisplayName:(id)a3;
- (void)setHandle:(id)a3;
- (void)setServiceName:(id)a3;
@end

@implementation _UNMutableNotificationContact

- (void)setHandle:(id)a3
{
  v4 = [a3 copy];
  handle = self->super._handle;
  self->super._handle = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setServiceName:(id)a3
{
  v4 = [a3 copy];
  serviceName = self->super._serviceName;
  self->super._serviceName = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setDisplayName:(id)a3
{
  v4 = [a3 copy];
  displayName = self->super._displayName;
  self->super._displayName = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setCustomIdentifier:(id)a3
{
  v4 = [a3 copy];
  customIdentifier = self->super._customIdentifier;
  self->super._customIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setCnContactIdentifier:(id)a3
{
  v4 = [a3 copy];
  cnContactIdentifier = self->super._cnContactIdentifier;
  self->super._cnContactIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setCnContactFullname:(id)a3
{
  v4 = [a3 copy];
  cnContactFullname = self->super._cnContactFullname;
  self->super._cnContactFullname = v4;

  MEMORY[0x1EEE66BB8]();
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_UNNotificationContact allocWithZone:a3];
  v5 = [(_UNNotificationContact *)self handle];
  v6 = [(_UNNotificationContact *)self handleType];
  v7 = [(_UNNotificationContact *)self serviceName];
  v8 = [(_UNNotificationContact *)self displayName];
  v9 = [(_UNNotificationContact *)self isDisplayNameSuggested];
  v10 = [(_UNNotificationContact *)self customIdentifier];
  v11 = [(_UNNotificationContact *)self cnContactIdentifier];
  v12 = [(_UNNotificationContact *)self cnContactFullname];
  LOBYTE(v15) = [(_UNNotificationContact *)self isCNContactIdentifierSuggested];
  v13 = [(_UNNotificationContact *)v4 _initWithhandle:v5 handleType:v6 serviceName:v7 displayName:v8 displayNameSuggested:v9 customIdentifier:v10 cnContactIdentifier:v11 cnContactFullname:v12 cnContactIdentifierSuggested:v15];

  return v13;
}

@end