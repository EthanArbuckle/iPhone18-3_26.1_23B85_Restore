@interface ATXStackRotationRecord
- (ATXStackRotationRecord)initWithInfoSuggestionId:(id)a3 clientModelId:(id)a4 criterion:(id)a5 widget:(id)a6 kind:(id)a7 intent:(id)a8 isStalenessRotation:(BOOL)a9 rotationDate:(id)a10 durationLimit:(double)a11 coolDownInterval:(double)a12;
@end

@implementation ATXStackRotationRecord

- (ATXStackRotationRecord)initWithInfoSuggestionId:(id)a3 clientModelId:(id)a4 criterion:(id)a5 widget:(id)a6 kind:(id)a7 intent:(id)a8 isStalenessRotation:(BOOL)a9 rotationDate:(id)a10 durationLimit:(double)a11 coolDownInterval:(double)a12
{
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v24 = a7;
  v25 = a8;
  v26 = a10;
  v39.receiver = self;
  v39.super_class = ATXStackRotationRecord;
  v27 = [(ATXStackRotationRecord *)&v39 init];
  if (v27)
  {
    v28 = [v20 copy];
    infoSuggestionId = v27->_infoSuggestionId;
    v27->_infoSuggestionId = v28;

    v30 = [v21 copy];
    clientModelId = v27->_clientModelId;
    v27->_clientModelId = v30;

    v32 = [v22 copy];
    criterion = v27->_criterion;
    v27->_criterion = v32;

    v34 = [v23 copy];
    extensionBundleId = v27->_extensionBundleId;
    v27->_extensionBundleId = v34;

    v36 = [v24 copy];
    widgetKind = v27->_widgetKind;
    v27->_widgetKind = v36;

    objc_storeStrong(&v27->_intent, a8);
    v27->_isStalenessRotation = a9;
    objc_storeStrong(&v27->_rotationDate, a10);
    v27->_durationLimit = a11;
    v27->_coolDownInterval = a12;
  }

  return v27;
}

@end