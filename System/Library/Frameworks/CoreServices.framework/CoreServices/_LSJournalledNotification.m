@interface _LSJournalledNotification
- (_LSJournalledNotification)initWithCoder:(id)a3;
- (_LSJournalledNotification)initWithNotification:(int)a3 bundleIDs:(id)a4 plugins:(BOOL)a5 options:(id)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _LSJournalledNotification

- (_LSJournalledNotification)initWithNotification:(int)a3 bundleIDs:(id)a4 plugins:(BOOL)a5 options:(id)a6
{
  v11 = a4;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = _LSJournalledNotification;
  v13 = [(_LSJournalledNotification *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_notification = a3;
    objc_storeStrong(&v13->_bundleIDs, a4);
    v14->_includePlugins = a5;
    objc_storeStrong(&v14->_options, a6);
  }

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  notification = self->_notification;
  v5 = a3;
  [v5 encodeInt:notification forKey:@"_notification"];
  [v5 encodeObject:self->_bundleIDs forKey:@"_bundleIDs"];
  [v5 encodeBool:self->_includePlugins forKey:@"_includePlugins"];
  [v5 encodeObject:self->_options forKey:@"_options"];
}

- (_LSJournalledNotification)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = _LSJournalledNotification;
  v5 = [(_LSJournalledNotification *)&v15 init];
  if (v5)
  {
    v5->_notification = [v4 decodeIntForKey:@"_notification"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 ls_decodeObjectOfClasses:v8 forKey:@"_bundleIDs"];
    bundleIDs = v5->_bundleIDs;
    v5->_bundleIDs = v9;

    v5->_includePlugins = [v4 decodeBoolForKey:@"_includePlugins"];
    v11 = XNSGetPropertyListClasses();
    v12 = [v4 ls_decodeObjectOfClasses:v11 forKey:@"_options"];
    options = v5->_options;
    v5->_options = v12;
  }

  return v5;
}

@end