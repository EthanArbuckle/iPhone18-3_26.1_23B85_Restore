@interface AVTCoreModelMulticolorPicker
- (AVTCoreModelMulticolorPicker)initWithIdentifier:(id)a3 title:(id)a4 subpickers:(id)a5 subtitles:(id)a6 nestedPresetPickers:(id)a7 auxiliaryPicker:(id)a8 initialState:(int64_t)a9 allowsRemoval:(BOOL)a10 options:(id)a11;
- (AVTCoreModelMulticolorPicker)initWithTitle:(id)a3 subpickers:(id)a4 subtitles:(id)a5 nestedPresetPickers:(id)a6 auxiliaryPicker:(id)a7 initialState:(int64_t)a8 allowsRemoval:(BOOL)a9 options:(id)a10;
- (NSString)description;
@end

@implementation AVTCoreModelMulticolorPicker

- (AVTCoreModelMulticolorPicker)initWithTitle:(id)a3 subpickers:(id)a4 subtitles:(id)a5 nestedPresetPickers:(id)a6 auxiliaryPicker:(id)a7 initialState:(int64_t)a8 allowsRemoval:(BOOL)a9 options:(id)a10
{
  v16 = MEMORY[0x1E696AFB0];
  v17 = a10;
  v18 = a7;
  v19 = a6;
  v20 = a5;
  v21 = a4;
  v22 = a3;
  v23 = [v16 UUID];
  v24 = [v23 UUIDString];
  LOBYTE(v27) = a9;
  v25 = [(AVTCoreModelMulticolorPicker *)self initWithIdentifier:v24 title:v22 subpickers:v21 subtitles:v20 nestedPresetPickers:v19 auxiliaryPicker:v18 initialState:a8 allowsRemoval:v27 options:v17];

  return v25;
}

- (AVTCoreModelMulticolorPicker)initWithIdentifier:(id)a3 title:(id)a4 subpickers:(id)a5 subtitles:(id)a6 nestedPresetPickers:(id)a7 auxiliaryPicker:(id)a8 initialState:(int64_t)a9 allowsRemoval:(BOOL)a10 options:(id)a11
{
  v17 = a3;
  v18 = a4;
  v29 = a5;
  v28 = a6;
  v27 = a7;
  v19 = a8;
  v20 = a11;
  v30.receiver = self;
  v30.super_class = AVTCoreModelMulticolorPicker;
  v21 = [(AVTCoreModelMulticolorPicker *)&v30 init];
  if (v21)
  {
    v22 = [v17 copy];
    identifier = v21->_identifier;
    v21->_identifier = v22;

    v24 = [v18 copy];
    title = v21->_title;
    v21->_title = v24;

    objc_storeStrong(&v21->_options, a11);
    objc_storeStrong(&v21->_subpickers, a5);
    objc_storeStrong(&v21->_subtitles, a6);
    objc_storeStrong(&v21->_nestedPresetPickers, a7);
    objc_storeStrong(&v21->_auxiliaryPicker, a8);
    v21->_initialState = a9;
    v21->_allowsRemoval = a10;
  }

  return v21;
}

- (NSString)description
{
  v16.receiver = self;
  v16.super_class = AVTCoreModelMulticolorPicker;
  v3 = [(AVTCoreModelMulticolorPicker *)&v16 description];
  v4 = [v3 mutableCopy];

  v5 = [(AVTCoreModelMulticolorPicker *)self identifier];
  [v4 appendFormat:@" identifier: %@", v5];

  v6 = [(AVTCoreModelMulticolorPicker *)self title];
  [v4 appendFormat:@" title: %@", v6];

  v7 = [(AVTCoreModelMulticolorPicker *)self subpickers];
  v8 = [v7 avt_description];
  [v4 appendFormat:@" subpickers: %@", v8];

  v9 = [(AVTCoreModelMulticolorPicker *)self subtitles];
  v10 = [v9 avt_description];
  [v4 appendFormat:@" subtitles: %@", v10];

  v11 = [(AVTCoreModelMulticolorPicker *)self nestedPresetPickers];
  [v4 appendFormat:@" nestedPresetPickers: %@", v11];

  v12 = [(AVTCoreModelMulticolorPicker *)self auxiliaryPicker];
  [v4 appendFormat:@" auxiliaryPicker: %@", v12];

  [v4 appendFormat:@" initialState: %lu", -[AVTCoreModelMulticolorPicker initialState](self, "initialState")];
  v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[AVTCoreModelMulticolorPicker allowsRemoval](self, "allowsRemoval")}];
  [v4 appendFormat:@" allowsRemoval: %@", v13];

  v14 = [v4 copy];

  return v14;
}

@end