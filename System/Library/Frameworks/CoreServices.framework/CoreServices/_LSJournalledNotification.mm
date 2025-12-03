@interface _LSJournalledNotification
- (_LSJournalledNotification)initWithCoder:(id)coder;
- (_LSJournalledNotification)initWithNotification:(int)notification bundleIDs:(id)ds plugins:(BOOL)plugins options:(id)options;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _LSJournalledNotification

- (_LSJournalledNotification)initWithNotification:(int)notification bundleIDs:(id)ds plugins:(BOOL)plugins options:(id)options
{
  dsCopy = ds;
  optionsCopy = options;
  v16.receiver = self;
  v16.super_class = _LSJournalledNotification;
  v13 = [(_LSJournalledNotification *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_notification = notification;
    objc_storeStrong(&v13->_bundleIDs, ds);
    v14->_includePlugins = plugins;
    objc_storeStrong(&v14->_options, options);
  }

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  notification = self->_notification;
  coderCopy = coder;
  [coderCopy encodeInt:notification forKey:@"_notification"];
  [coderCopy encodeObject:self->_bundleIDs forKey:@"_bundleIDs"];
  [coderCopy encodeBool:self->_includePlugins forKey:@"_includePlugins"];
  [coderCopy encodeObject:self->_options forKey:@"_options"];
}

- (_LSJournalledNotification)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = _LSJournalledNotification;
  v5 = [(_LSJournalledNotification *)&v15 init];
  if (v5)
  {
    v5->_notification = [coderCopy decodeIntForKey:@"_notification"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy ls_decodeObjectOfClasses:v8 forKey:@"_bundleIDs"];
    bundleIDs = v5->_bundleIDs;
    v5->_bundleIDs = v9;

    v5->_includePlugins = [coderCopy decodeBoolForKey:@"_includePlugins"];
    v11 = XNSGetPropertyListClasses();
    v12 = [coderCopy ls_decodeObjectOfClasses:v11 forKey:@"_options"];
    options = v5->_options;
    v5->_options = v12;
  }

  return v5;
}

@end