@interface CXChannelUpdate
+ (id)unarchivedObjectClasses;
+ (id)unarchivedObjectFromData:(id)data error:(id *)error;
- (CXChannelUpdate)init;
- (CXChannelUpdate)initWithCoder:(id)coder;
- (CXChannelUpdate)updateWithUpdate:(id)update;
- (NSURL)imageURL;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)description;
- (id)sanitizedCopyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)setAudioCategory:(id)category;
- (void)setAudioMode:(id)mode;
- (void)setImageURL:(id)l;
- (void)setName:(id)name;
- (void)updateCopy:(id)copy withZone:(_NSZone *)zone;
- (void)updateSanitizedCopy:(id)copy withZone:(_NSZone *)zone;
@end

@implementation CXChannelUpdate

- (CXChannelUpdate)init
{
  v7.receiver = self;
  v7.super_class = CXChannelUpdate;
  v2 = [(CXChannelUpdate *)&v7 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 9) = 0;
    v4 = objc_alloc_init(MEMORY[0x1E696AFB0]);
    UUID = v3->_UUID;
    v3->_UUID = v4;
  }

  return v3;
}

- (void)setAudioCategory:(id)category
{
  *(&self->_accessoryButtonEventsEnabled + 1) |= 4u;
  v4 = [category copy];
  audioCategory = self->_audioCategory;
  self->_audioCategory = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setAudioMode:(id)mode
{
  *(&self->_accessoryButtonEventsEnabled + 1) |= 0x20u;
  v4 = [mode copy];
  audioMode = self->_audioMode;
  self->_audioMode = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setName:(id)name
{
  *(&self->_accessoryButtonEventsEnabled + 1) |= 0x40u;
  v4 = [name copy];
  name = self->_name;
  self->_name = v4;

  MEMORY[0x1EEE66BB8]();
}

- (NSURL)imageURL
{
  sandboxExtendedImageURL = [(CXChannelUpdate *)self sandboxExtendedImageURL];
  v3 = [sandboxExtendedImageURL URL];

  return v3;
}

- (void)setImageURL:(id)l
{
  if (l)
  {
    v4 = CXGetSandboxExtendedFileURL(l);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [(CXChannelUpdate *)self setSandboxExtendedImageURL:v4];
}

- (void)updateSanitizedCopy:(id)copy withZone:(_NSZone *)zone
{
  copyCopy = copy;
  uUID = [(CXChannelUpdate *)self UUID];
  v7 = [uUID copyWithZone:zone];
  v8 = *(copyCopy + 12);
  *(copyCopy + 12) = v7;

  if (([(CXChannelUpdate *)self hasSet]& 1) != 0)
  {
    *(copyCopy + 9) |= 1u;
    activeRemoteParticipant = [(CXChannelUpdate *)self activeRemoteParticipant];
    [copyCopy setActiveRemoteParticipant:activeRemoteParticipant];
  }

  if (([(CXChannelUpdate *)self hasSet]& 0x40) != 0)
  {
    *(copyCopy + 9) |= 0x40u;
    name = [(CXChannelUpdate *)self name];
    v11 = [name copyWithZone:zone];
    [copyCopy setName:v11];
  }

  if (([(CXChannelUpdate *)self hasSet]& 0x80) != 0)
  {
    *(copyCopy + 9) |= 0x80u;
    sandboxExtendedImageURL = [(CXChannelUpdate *)self sandboxExtendedImageURL];
    [copyCopy setSandboxExtendedImageURL:sandboxExtendedImageURL];
  }

  if (([(CXChannelUpdate *)self hasSet]& 0x100) != 0)
  {
    *(copyCopy + 9) |= 0x100u;
    [copyCopy setServiceStatus:{-[CXChannelUpdate serviceStatus](self, "serviceStatus")}];
  }

  if (([(CXChannelUpdate *)self hasSet]& 0x200) != 0)
  {
    *(copyCopy + 9) |= 0x200u;
    [copyCopy setTransmissionMode:{-[CXChannelUpdate transmissionMode](self, "transmissionMode")}];
  }

  if (([(CXChannelUpdate *)self hasSet]& 0x400) != 0)
  {
    *(copyCopy + 9) |= 0x400u;
    [copyCopy setAccessoryButtonEventsEnabled:{-[CXChannelUpdate accessoryButtonEventsEnabled](self, "accessoryButtonEventsEnabled")}];
  }
}

- (id)sanitizedCopyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [(CXChannelUpdate *)self updateSanitizedCopy:v5 withZone:zone];

  return v5;
}

- (void)updateCopy:(id)copy withZone:(_NSZone *)zone
{
  copyCopy = copy;
  [CXChannelUpdate updateSanitizedCopy:"updateSanitizedCopy:withZone:" withZone:?];
  if (([(CXChannelUpdate *)self hasSet]& 2) != 0)
  {
    *(copyCopy + 9) |= 2u;
    [copyCopy setAudioBluetoothFormat:-[CXChannelUpdate audioBluetoothFormat](self, "audioBluetoothFormat")];
  }

  if (([(CXChannelUpdate *)self hasSet]& 4) != 0)
  {
    *(copyCopy + 9) |= 4u;
    audioCategory = [(CXChannelUpdate *)self audioCategory];
    v7 = [audioCategory copyWithZone:zone];
    [copyCopy setAudioCategory:v7];
  }

  if (([(CXChannelUpdate *)self hasSet]& 0x10) != 0)
  {
    *(copyCopy + 9) |= 0x10u;
    [copyCopy setAudioInterruptionOperationMode:{-[CXChannelUpdate audioInterruptionOperationMode](self, "audioInterruptionOperationMode")}];
  }

  if (([(CXChannelUpdate *)self hasSet]& 8) != 0)
  {
    *(copyCopy + 9) |= 8u;
    [copyCopy setAudioInterruptionProvider:{-[CXChannelUpdate audioInterruptionProvider](self, "audioInterruptionProvider")}];
  }

  if (([(CXChannelUpdate *)self hasSet]& 0x20) != 0)
  {
    *(copyCopy + 9) |= 0x20u;
    audioMode = [(CXChannelUpdate *)self audioMode];
    v9 = [audioMode copyWithZone:zone];
    [copyCopy setAudioMode:v9];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [(CXChannelUpdate *)self updateCopy:v5 withZone:zone];
  return v5;
}

+ (id)unarchivedObjectClasses
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, v5, v6, v7, v8, objc_opt_class(), 0}];
}

+ (id)unarchivedObjectFromData:(id)data error:(id *)error
{
  v6 = MEMORY[0x1E696ACD0];
  dataCopy = data;
  unarchivedObjectClasses = [self unarchivedObjectClasses];
  v9 = [v6 unarchivedObjectOfClasses:unarchivedObjectClasses fromData:dataCopy error:error];

  return v9;
}

- (CXChannelUpdate)initWithCoder:(id)coder
{
  v42 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v39.receiver = self;
  v39.super_class = CXChannelUpdate;
  v5 = [(CXChannelUpdate *)&v39 init];
  if (!v5)
  {
LABEL_35:
    v34 = v5;
    goto LABEL_36;
  }

  v38 = 0;
  v6 = coderCopy;
  v7 = NSStringFromSelector(sel_hasSet);
  v8 = [coderCopy decodeBytesForKey:v7 returnedLength:&v38];

  if (v38 == 2)
  {
    *(v5 + 9) = *v8;
    v9 = objc_opt_class();
    v10 = NSStringFromSelector(sel_UUID);
    v11 = [coderCopy decodeObjectOfClass:v9 forKey:v10];
    v12 = *(v5 + 12);
    *(v5 + 12) = v11;

    if ([v5 hasSet])
    {
      v13 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
      v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"activeRemoteParticipant"];
      v15 = *(v5 + 2);
      *(v5 + 2) = v14;
    }

    if (([v5 hasSet] & 2) != 0)
    {
      *(v5 + 6) = [coderCopy decodeIntegerForKey:@"audioBluetoothFormat"];
    }

    if (([v5 hasSet] & 4) != 0)
    {
      v16 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
      v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"audioCategory"];
      v18 = *(v5 + 7);
      *(v5 + 7) = v17;
    }

    if (([v5 hasSet] & 0x10) != 0)
    {
      *(v5 + 8) = [coderCopy decodeIntegerForKey:@"audioInterruptionOperationMode"];
    }

    if (([v5 hasSet] & 8) != 0)
    {
      *(v5 + 9) = [coderCopy decodeIntegerForKey:@"audioInterruptionProvider"];
    }

    if (([v5 hasSet] & 0x20) != 0)
    {
      v19 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
      v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"audioMode"];
      v21 = *(v5 + 10);
      *(v5 + 10) = v20;
    }

    if (([v5 hasSet] & 0x40) != 0)
    {
      v22 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
      v23 = [coderCopy decodeObjectOfClasses:v22 forKey:@"name"];
      v24 = *(v5 + 3);
      *(v5 + 3) = v23;
    }

    if (([v5 hasSet] & 0x100) != 0)
    {
      *(v5 + 4) = [coderCopy decodeIntegerForKey:@"serviceStatus"];
    }

    if (([v5 hasSet] & 0x200) != 0)
    {
      *(v5 + 5) = [coderCopy decodeIntegerForKey:@"transmissionMode"];
    }

    if (([v5 hasSet] & 0x400) != 0)
    {
      v5[8] = [coderCopy decodeBoolForKey:@"accessoryButtonEventsEnabled"];
    }

    v25 = objc_opt_class();
    v26 = NSStringFromSelector(sel_sandboxExtendedImageURL);
    v27 = [coderCopy decodeObjectOfClass:v25 forKey:v26];

    if (v27)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && ([coderCopy connection], v28 = objc_claimAutoreleasedReturnValue(), v28, v28))
      {
        connection = [coderCopy connection];
        v30 = [v27 URL];
        v31 = [connection cx_clientSandboxCanAccessFileURL:v30];

        if (v31)
        {
          v32 = v27;
          v33 = *(v5 + 11);
          *(v5 + 11) = v32;
        }

        else
        {
          v33 = CXDefaultLog();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v41 = v27;
            _os_log_impl(&dword_1B47F3000, v33, OS_LOG_TYPE_DEFAULT, "[WARN] Client does not have permission to access %@", buf, 0xCu);
          }
        }
      }

      else
      {
        v35 = v27;
        connection = *(v5 + 11);
        *(v5 + 11) = v35;
      }
    }

    goto LABEL_35;
  }

  v34 = 0;
LABEL_36:

  v36 = *MEMORY[0x1E69E9840];
  return v34;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uUID = [(CXChannelUpdate *)self UUID];
  v5 = NSStringFromSelector(sel_UUID);
  [coderCopy encodeObject:uUID forKey:v5];

  v6 = NSStringFromSelector(sel_hasSet);
  [coderCopy encodeBytes:&self->_accessoryButtonEventsEnabled + 1 length:2 forKey:v6];

  if (([(CXChannelUpdate *)self hasSet]& 1) != 0)
  {
    activeRemoteParticipant = [(CXChannelUpdate *)self activeRemoteParticipant];
    [coderCopy encodeObject:activeRemoteParticipant forKey:@"activeRemoteParticipant"];
  }

  if (([(CXChannelUpdate *)self hasSet]& 2) != 0)
  {
    [coderCopy encodeInteger:-[CXChannelUpdate audioBluetoothFormat](self forKey:{"audioBluetoothFormat"), @"audioBluetoothFormat"}];
  }

  if (([(CXChannelUpdate *)self hasSet]& 4) != 0)
  {
    audioCategory = [(CXChannelUpdate *)self audioCategory];
    [coderCopy encodeObject:audioCategory forKey:@"audioCategory"];
  }

  if (([(CXChannelUpdate *)self hasSet]& 0x10) != 0)
  {
    [coderCopy encodeInteger:-[CXChannelUpdate audioInterruptionOperationMode](self forKey:{"audioInterruptionOperationMode"), @"audioInterruptionOperationMode"}];
  }

  if (([(CXChannelUpdate *)self hasSet]& 8) != 0)
  {
    [coderCopy encodeInteger:-[CXChannelUpdate audioInterruptionProvider](self forKey:{"audioInterruptionProvider"), @"audioInterruptionProvider"}];
  }

  if (([(CXChannelUpdate *)self hasSet]& 0x20) != 0)
  {
    audioMode = [(CXChannelUpdate *)self audioMode];
    [coderCopy encodeObject:audioMode forKey:@"audioMode"];
  }

  if (([(CXChannelUpdate *)self hasSet]& 0x40) != 0)
  {
    name = [(CXChannelUpdate *)self name];
    [coderCopy encodeObject:name forKey:@"name"];
  }

  if (([(CXChannelUpdate *)self hasSet]& 0x80) != 0)
  {
    sandboxExtendedImageURL = [(CXChannelUpdate *)self sandboxExtendedImageURL];
    [coderCopy encodeObject:sandboxExtendedImageURL forKey:@"sandboxExtendedImageURL"];
  }

  if (([(CXChannelUpdate *)self hasSet]& 0x100) != 0)
  {
    [coderCopy encodeInteger:-[CXChannelUpdate serviceStatus](self forKey:{"serviceStatus"), @"serviceStatus"}];
  }

  if (([(CXChannelUpdate *)self hasSet]& 0x200) != 0)
  {
    [coderCopy encodeInteger:-[CXChannelUpdate transmissionMode](self forKey:{"transmissionMode"), @"transmissionMode"}];
  }

  if (([(CXChannelUpdate *)self hasSet]& 0x400) != 0)
  {
    [coderCopy encodeBool:-[CXChannelUpdate accessoryButtonEventsEnabled](self forKey:{"accessoryButtonEventsEnabled"), @"accessoryButtonEventsEnabled"}];
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  uUID = [(CXChannelUpdate *)self UUID];
  v6 = [v3 stringWithFormat:@"<%@ %p UUID=%@>", v4, self, uUID];

  return v6;
}

- (id)debugDescription
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  uUID = [(CXChannelUpdate *)self UUID];
  [v3 appendFormat:@" UUID=%@", uUID];

  if (([(CXChannelUpdate *)self hasSet]& 1) != 0)
  {
    activeRemoteParticipant = [(CXChannelUpdate *)self activeRemoteParticipant];
    [v3 appendFormat:@" activeRemoteParticipant=%@", activeRemoteParticipant];
  }

  if (([(CXChannelUpdate *)self hasSet]& 2) != 0)
  {
    [v3 appendFormat:@" audioBluetoothFormat=%ld", -[CXChannelUpdate audioBluetoothFormat](self, "audioBluetoothFormat")];
  }

  if (([(CXChannelUpdate *)self hasSet]& 4) != 0)
  {
    audioCategory = [(CXChannelUpdate *)self audioCategory];
    [v3 appendFormat:@" audioCategory=%@", audioCategory];
  }

  if (([(CXChannelUpdate *)self hasSet]& 0x10) != 0)
  {
    [v3 appendFormat:@" audioInterruptionOperationMode=%ld", -[CXChannelUpdate audioInterruptionOperationMode](self, "audioInterruptionOperationMode")];
  }

  if (([(CXChannelUpdate *)self hasSet]& 8) != 0)
  {
    [v3 appendFormat:@" audioInterruptionProvider=%ld", -[CXChannelUpdate audioInterruptionProvider](self, "audioInterruptionProvider")];
  }

  if (([(CXChannelUpdate *)self hasSet]& 0x20) != 0)
  {
    audioMode = [(CXChannelUpdate *)self audioMode];
    [v3 appendFormat:@" audioMode=%@", audioMode];
  }

  if (([(CXChannelUpdate *)self hasSet]& 0x80) != 0)
  {
    sandboxExtendedImageURL = [(CXChannelUpdate *)self sandboxExtendedImageURL];
    [v3 appendFormat:@" imageURL=%@", sandboxExtendedImageURL];
  }

  if (([(CXChannelUpdate *)self hasSet]& 0x40) != 0)
  {
    name = [(CXChannelUpdate *)self name];
    [v3 appendFormat:@" name=%@", name];
  }

  if (([(CXChannelUpdate *)self hasSet]& 0x100) != 0)
  {
    [v3 appendFormat:@" serviceStatus=%ld", -[CXChannelUpdate serviceStatus](self, "serviceStatus")];
  }

  if (([(CXChannelUpdate *)self hasSet]& 0x200) != 0)
  {
    [v3 appendFormat:@" transmissionMode=%ld", -[CXChannelUpdate transmissionMode](self, "transmissionMode")];
  }

  if (([(CXChannelUpdate *)self hasSet]& 0x400) != 0)
  {
    [v3 appendFormat:@" accessoryButtonEventsEnabled=%d", -[CXChannelUpdate accessoryButtonEventsEnabled](self, "accessoryButtonEventsEnabled")];
  }

  [v3 appendString:@">"];

  return v3;
}

- (CXChannelUpdate)updateWithUpdate:(id)update
{
  updateCopy = update;
  v5 = [(CXChannelUpdate *)self copy];
  if ([updateCopy hasSet])
  {
    activeRemoteParticipant = [updateCopy activeRemoteParticipant];
    [v5 setActiveRemoteParticipant:activeRemoteParticipant];
  }

  if (([updateCopy hasSet] & 2) != 0)
  {
    [v5 setAudioBluetoothFormat:objc_msgSend(updateCopy, "audioBluetoothFormat")];
  }

  if (([updateCopy hasSet] & 4) != 0)
  {
    audioCategory = [updateCopy audioCategory];
    [v5 setAudioCategory:audioCategory];
  }

  if (([updateCopy hasSet] & 0x10) != 0)
  {
    [v5 setAudioInterruptionOperationMode:{objc_msgSend(updateCopy, "audioInterruptionOperationMode")}];
  }

  if (([updateCopy hasSet] & 8) != 0)
  {
    [v5 setAudioInterruptionProvider:{objc_msgSend(updateCopy, "audioInterruptionProvider")}];
  }

  if (([updateCopy hasSet] & 0x20) != 0)
  {
    audioMode = [updateCopy audioMode];
    [v5 setAudioMode:audioMode];
  }

  if (([updateCopy hasSet] & 0x40) != 0)
  {
    name = [updateCopy name];
    [v5 setName:name];
  }

  if (([updateCopy hasSet] & 0x80) != 0)
  {
    sandboxExtendedImageURL = [updateCopy sandboxExtendedImageURL];
    [v5 setSandboxExtendedImageURL:sandboxExtendedImageURL];
  }

  if (([updateCopy hasSet] & 0x100) != 0)
  {
    [v5 setServiceStatus:{objc_msgSend(updateCopy, "serviceStatus")}];
  }

  if (([updateCopy hasSet] & 0x200) != 0)
  {
    [v5 setTransmissionMode:{objc_msgSend(updateCopy, "transmissionMode")}];
  }

  if (([updateCopy hasSet] & 0x400) != 0)
  {
    [v5 setAccessoryButtonEventsEnabled:{objc_msgSend(updateCopy, "accessoryButtonEventsEnabled")}];
  }

  return v5;
}

@end