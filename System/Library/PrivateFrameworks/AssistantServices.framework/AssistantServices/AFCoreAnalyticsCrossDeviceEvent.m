@interface AFCoreAnalyticsCrossDeviceEvent
- (AFCoreAnalyticsCrossDeviceEvent)initWithNearbyDevicesLoggingID:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_setTargetedDeviceContextIdentifier:(id)a3 withAction:(id)a4 payload:(id)a5;
- (void)addCoreAnalyticsDeviceTargetedWithContextIdentifier:(id)a3 commandResultDescription:(id)a4;
- (void)addNearbyDeviceContexts:(id)a3 proximityInfo:(id)a4;
@end

@implementation AFCoreAnalyticsCrossDeviceEvent

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v18[2] = *MEMORY[0x1E69E9840];
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v17.receiver = self;
  v17.super_class = AFCoreAnalyticsCrossDeviceEvent;
  v5 = [(AFCoreAnalyticsCrossDeviceEvent *)&v17 description];
  v6 = objc_alloc(MEMORY[0x1E696AEC0]);
  v7 = [(NSString *)self->_nearbyDevicesLoggingID description];
  v8 = [v6 initWithFormat:@"nearbyDevicesLoggingID = %@", v7];
  v18[0] = v8;
  v9 = objc_alloc(MEMORY[0x1E696AEC0]);
  v10 = [(NSMutableDictionary *)self->_nearbyDevicesPayloads description];
  v11 = [v9 initWithFormat:@"nearbyDevicesPayloads = %@", v10];
  v18[1] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v13 = [v12 componentsJoinedByString:{@", "}];
  v14 = [v4 initWithFormat:@"%@ {%@}", v5, v13];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[AFCoreAnalyticsCrossDeviceEvent allocWithZone:?], "initWithNearbyDevicesLoggingID:", self->_nearbyDevicesLoggingID];
  [(AFCoreAnalyticsCrossDeviceEvent *)v4 setNearbyDevicesPayloads:self->_nearbyDevicesPayloads];
  return v4;
}

- (void)addCoreAnalyticsDeviceTargetedWithContextIdentifier:(id)a3 commandResultDescription:(id)a4
{
  v6 = a3;
  v7 = a4;
  nearbyDevicesPayloads = self->_nearbyDevicesPayloads;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __112__AFCoreAnalyticsCrossDeviceEvent_addCoreAnalyticsDeviceTargetedWithContextIdentifier_commandResultDescription___block_invoke;
  v11[3] = &unk_1E7344F58;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  [(NSMutableDictionary *)nearbyDevicesPayloads enumerateKeysAndObjectsUsingBlock:v11];
}

void __112__AFCoreAnalyticsCrossDeviceEvent_addCoreAnalyticsDeviceTargetedWithContextIdentifier_commandResultDescription___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v14 = a2;
  v8 = a3;
  v9 = *(a1 + 32);
  v10 = v9;
  if (!v9)
  {
    v4 = [v8 proximity];
    v11 = @"primary";
    if ([v4 isEqualToString:@"primary"])
    {

      goto LABEL_7;
    }

    v10 = *(a1 + 32);
  }

  v12 = [v10 UUIDString];
  v13 = [v12 isEqualToString:v14];

  if (v9)
  {
    if (!v13)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v13)
  {
LABEL_7:
    [*(a1 + 40) _setTargetedDeviceContextIdentifier:v14 withAction:*(a1 + 48) payload:v8];
    *a4 = 1;
  }

LABEL_8:
}

- (void)_setTargetedDeviceContextIdentifier:(id)a3 withAction:(id)a4 payload:(id)a5
{
  v8 = a4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __90__AFCoreAnalyticsCrossDeviceEvent__setTargetedDeviceContextIdentifier_withAction_payload___block_invoke;
  v12[3] = &unk_1E7344F30;
  v13 = v8;
  v9 = v8;
  v10 = a3;
  v11 = [a5 mutatedCopyWithMutator:v12];
  [(NSMutableDictionary *)self->_nearbyDevicesPayloads setObject:v11 forKey:v10];
}

- (void)addNearbyDeviceContexts:(id)a3 proximityInfo:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v7 = MEMORY[0x1E695DF90];
    v8 = a3;
    v9 = objc_alloc_init(v7);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __73__AFCoreAnalyticsCrossDeviceEvent_addNearbyDeviceContexts_proximityInfo___block_invoke;
    v11[3] = &unk_1E7344F08;
    v12 = v6;
    v13 = self;
    v14 = v9;
    v10 = v9;
    [v8 enumerateObjectsUsingBlock:v11];

    [(AFCoreAnalyticsCrossDeviceEvent *)self setNearbyDevicesPayloads:v10];
  }
}

void __73__AFCoreAnalyticsCrossDeviceEvent_addNearbyDeviceContexts_proximityInfo___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 deviceInfo];
  v5 = [v4 assistantIdentifier];

  if (!v5 || ([*(a1 + 32) objectForKey:v5], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "integerValue"), v6, v5, !v7))
  {
    v8 = [v3 deviceInfo];
    v9 = [v8 idsDeviceUniqueIdentifier];

    if (v9)
    {
      v10 = [*(a1 + 32) objectForKey:v9];
      v7 = [v10 integerValue];
    }

    else
    {
      v7 = 0;
    }
  }

  v11 = AFCoreAnalyticsPayloadCreateForDeviceContext(v3, v7, *(*(a1 + 40) + 8));
  v12 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v17 = v12;
    v18 = [v3 identifier];
    v19 = [v18 UUIDString];
    v20 = 136315650;
    v21 = "[AFCoreAnalyticsCrossDeviceEvent addNearbyDeviceContexts:proximityInfo:]_block_invoke";
    v22 = 2112;
    v23 = v19;
    v24 = 2112;
    v25 = v11;
    _os_log_debug_impl(&dword_1912FE000, v17, OS_LOG_TYPE_DEBUG, "%s payload for %@: %@", &v20, 0x20u);
  }

  v13 = *(a1 + 48);
  v14 = [v3 identifier];
  v15 = [v14 UUIDString];
  [v13 setObject:v11 forKey:v15];

  v16 = *MEMORY[0x1E69E9840];
}

- (AFCoreAnalyticsCrossDeviceEvent)initWithNearbyDevicesLoggingID:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AFCoreAnalyticsCrossDeviceEvent;
  v5 = [(AFCoreAnalyticsCrossDeviceEvent *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    nearbyDevicesLoggingID = v5->_nearbyDevicesLoggingID;
    v5->_nearbyDevicesLoggingID = v6;
  }

  return v5;
}

@end