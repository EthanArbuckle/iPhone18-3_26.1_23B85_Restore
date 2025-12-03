@interface AVTCoreModelMulticolorPicker
- (AVTCoreModelMulticolorPicker)initWithIdentifier:(id)identifier title:(id)title subpickers:(id)subpickers subtitles:(id)subtitles nestedPresetPickers:(id)pickers auxiliaryPicker:(id)picker initialState:(int64_t)state allowsRemoval:(BOOL)self0 options:(id)self1;
- (AVTCoreModelMulticolorPicker)initWithTitle:(id)title subpickers:(id)subpickers subtitles:(id)subtitles nestedPresetPickers:(id)pickers auxiliaryPicker:(id)picker initialState:(int64_t)state allowsRemoval:(BOOL)removal options:(id)self0;
- (NSString)description;
@end

@implementation AVTCoreModelMulticolorPicker

- (AVTCoreModelMulticolorPicker)initWithTitle:(id)title subpickers:(id)subpickers subtitles:(id)subtitles nestedPresetPickers:(id)pickers auxiliaryPicker:(id)picker initialState:(int64_t)state allowsRemoval:(BOOL)removal options:(id)self0
{
  v16 = MEMORY[0x1E696AFB0];
  optionsCopy = options;
  pickerCopy = picker;
  pickersCopy = pickers;
  subtitlesCopy = subtitles;
  subpickersCopy = subpickers;
  titleCopy = title;
  uUID = [v16 UUID];
  uUIDString = [uUID UUIDString];
  LOBYTE(v27) = removal;
  v25 = [(AVTCoreModelMulticolorPicker *)self initWithIdentifier:uUIDString title:titleCopy subpickers:subpickersCopy subtitles:subtitlesCopy nestedPresetPickers:pickersCopy auxiliaryPicker:pickerCopy initialState:state allowsRemoval:v27 options:optionsCopy];

  return v25;
}

- (AVTCoreModelMulticolorPicker)initWithIdentifier:(id)identifier title:(id)title subpickers:(id)subpickers subtitles:(id)subtitles nestedPresetPickers:(id)pickers auxiliaryPicker:(id)picker initialState:(int64_t)state allowsRemoval:(BOOL)self0 options:(id)self1
{
  identifierCopy = identifier;
  titleCopy = title;
  subpickersCopy = subpickers;
  subtitlesCopy = subtitles;
  pickersCopy = pickers;
  pickerCopy = picker;
  optionsCopy = options;
  v30.receiver = self;
  v30.super_class = AVTCoreModelMulticolorPicker;
  v21 = [(AVTCoreModelMulticolorPicker *)&v30 init];
  if (v21)
  {
    v22 = [identifierCopy copy];
    identifier = v21->_identifier;
    v21->_identifier = v22;

    v24 = [titleCopy copy];
    title = v21->_title;
    v21->_title = v24;

    objc_storeStrong(&v21->_options, options);
    objc_storeStrong(&v21->_subpickers, subpickers);
    objc_storeStrong(&v21->_subtitles, subtitles);
    objc_storeStrong(&v21->_nestedPresetPickers, pickers);
    objc_storeStrong(&v21->_auxiliaryPicker, picker);
    v21->_initialState = state;
    v21->_allowsRemoval = removal;
  }

  return v21;
}

- (NSString)description
{
  v16.receiver = self;
  v16.super_class = AVTCoreModelMulticolorPicker;
  v3 = [(AVTCoreModelMulticolorPicker *)&v16 description];
  v4 = [v3 mutableCopy];

  identifier = [(AVTCoreModelMulticolorPicker *)self identifier];
  [v4 appendFormat:@" identifier: %@", identifier];

  title = [(AVTCoreModelMulticolorPicker *)self title];
  [v4 appendFormat:@" title: %@", title];

  subpickers = [(AVTCoreModelMulticolorPicker *)self subpickers];
  avt_description = [subpickers avt_description];
  [v4 appendFormat:@" subpickers: %@", avt_description];

  subtitles = [(AVTCoreModelMulticolorPicker *)self subtitles];
  avt_description2 = [subtitles avt_description];
  [v4 appendFormat:@" subtitles: %@", avt_description2];

  nestedPresetPickers = [(AVTCoreModelMulticolorPicker *)self nestedPresetPickers];
  [v4 appendFormat:@" nestedPresetPickers: %@", nestedPresetPickers];

  auxiliaryPicker = [(AVTCoreModelMulticolorPicker *)self auxiliaryPicker];
  [v4 appendFormat:@" auxiliaryPicker: %@", auxiliaryPicker];

  [v4 appendFormat:@" initialState: %lu", -[AVTCoreModelMulticolorPicker initialState](self, "initialState")];
  v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[AVTCoreModelMulticolorPicker allowsRemoval](self, "allowsRemoval")}];
  [v4 appendFormat:@" allowsRemoval: %@", v13];

  v14 = [v4 copy];

  return v14;
}

@end