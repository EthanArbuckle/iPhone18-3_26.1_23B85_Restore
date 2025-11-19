@interface AVVCPluginRemoteInputHost
- (AVVCPluginRemoteInputHost)init;
- (AVVoiceController)mMotherController;
- (id)allBundles:(id *)a3;
- (id)findDeviceWithIdentifier:(id)a3;
- (id)findFirstBluetoothDevice;
- (id)mockPluginEndpoint;
- (void)dealloc;
- (void)inputPlugin:(id)a3 didPublishDevice:(id)a4;
- (void)inputPlugin:(id)a3 didUnpublishDevice:(id)a4;
- (void)invalidatePlugins;
- (void)setParentVoiceController:(id)a3;
@end

@implementation AVVCPluginRemoteInputHost

- (AVVoiceController)mMotherController
{
  WeakRetained = objc_loadWeakRetained(&self->_mMotherController);

  return WeakRetained;
}

- (id)mockPluginEndpoint
{
  v32 = *MEMORY[0x1E69E9840];
  if (kAVVCScope)
  {
    v3 = *kAVVCScope;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
    v4 = MEMORY[0x1E69E9C10];
  }

  v5 = v3;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained(&self->_mMotherController);
    *buf = 136315906;
    v25 = "AVVCPluginRemoteInputHost.mm";
    v26 = 1024;
    v27 = 193;
    v28 = 2048;
    v29 = self;
    v30 = 2048;
    v31 = WeakRetained;
    _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d self(%p) controller(%p)", buf, 0x26u);
  }

LABEL_8:
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = self->mPlugins;
  v8 = [(AVAudioRemoteInputPlugin *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = *v20;
LABEL_10:
    v10 = 0;
    while (1)
    {
      if (*v20 != v9)
      {
        objc_enumerationMutation(v7);
      }

      v11 = *(*(&v19 + 1) + 8 * v10);
      if ([v11 conformsToProtocol:{&unk_1F385C438, v19}])
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [(AVAudioRemoteInputPlugin *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v8)
        {
          goto LABEL_10;
        }

        goto LABEL_16;
      }
    }

    v14 = v11;
    v13 = [v14 mockPluginEndpoint];

    if (kAVVCScope)
    {
      v12 = *kAVVCScope;
      if (!v12)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v12 = MEMORY[0x1E69E9C10];
      v15 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v25 = "AVVCPluginRemoteInputHost.mm";
      v26 = 1024;
      v27 = 210;
      v28 = 2112;
      v29 = v13;
      _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d mock plugin endpoint (%@)", buf, 0x1Cu);
    }
  }

  else
  {
LABEL_16:

    if (kAVVCScope)
    {
      v12 = *kAVVCScope;
      if (!v12)
      {
        v13 = 0;
        goto LABEL_30;
      }
    }

    else
    {
      v12 = MEMORY[0x1E69E9C10];
      v16 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v25 = "AVVCPluginRemoteInputHost.mm";
      v26 = 1024;
      v27 = 207;
      _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d couldn't find mock plugin", buf, 0x12u);
    }

    v13 = 0;
  }

LABEL_30:
  v17 = *MEMORY[0x1E69E9840];

  return v13;
}

- (void)inputPlugin:(id)a3 didUnpublishDevice:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (kAVVCScope)
  {
    v8 = *kAVVCScope;
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
  }

  v10 = v8;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained(&self->_mMotherController);
    v12 = [v7 deviceIdentifier];
    *v24 = 136316674;
    *&v24[4] = "AVVCPluginRemoteInputHost.mm";
    *&v24[12] = 1024;
    *&v24[14] = 177;
    v25 = 2048;
    v26 = self;
    v27 = 2048;
    v28 = WeakRetained;
    v29 = 2048;
    v30 = v6;
    v31 = 2048;
    v32 = v7;
    v33 = 2112;
    v34 = v12;
    _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d self(%p) controller(%p) plugin(%p), did UNpublish device(%p) with id(%@)", v24, 0x44u);
  }

LABEL_8:
  if (v7)
  {
    v13 = objc_loadWeakRetained(&self->_mMotherController);
    if (v13)
    {
      v14 = objc_loadWeakRetained(&self->_mMotherController);
      [v14 impl];
      if (*(*v24 + 520))
      {
        v15 = 0;
      }

      else
      {
        v17 = objc_loadWeakRetained(&self->_mMotherController);
        v15 = objc_opt_respondsToSelector();
      }

      if (*&v24[8])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&v24[8]);
      }

      if (v15)
      {
        v16 = objc_loadWeakRetained(&self->_mMotherController);
        [v16 handlePluginDidUnpublishDevice:v6 withDevice:v7];
        goto LABEL_30;
      }
    }

    if (kAVVCScope)
    {
      v16 = *kAVVCScope;
      if (!v16)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v16 = MEMORY[0x1E69E9C10];
      v18 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_30;
    }

    *v24 = 136315394;
    *&v24[4] = "AVVCPluginRemoteInputHost.mm";
    *&v24[12] = 1024;
    *&v24[14] = 185;
    v19 = "%25s:%-5d WARNING: Not forwarding didUNpublish event to AVVC parent because it does not exist, or is deallocating.";
    v20 = v16;
    v21 = OS_LOG_TYPE_DEFAULT;
LABEL_29:
    _os_log_impl(&dword_1BA5AC000, v20, v21, v19, v24, 0x12u);
    goto LABEL_30;
  }

  if (kAVVCScope)
  {
    v16 = *kAVVCScope;
    if (!v16)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v16 = MEMORY[0x1E69E9C10];
    v22 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *v24 = 136315394;
    *&v24[4] = "AVVCPluginRemoteInputHost.mm";
    *&v24[12] = 1024;
    *&v24[14] = 179;
    v19 = "%25s:%-5d ERROR: Received didUNpublishDevice with 'nil' device. Not forwarding event to AVVC parent.";
    v20 = v16;
    v21 = OS_LOG_TYPE_ERROR;
    goto LABEL_29;
  }

LABEL_30:

LABEL_31:
  v23 = *MEMORY[0x1E69E9840];
}

- (void)inputPlugin:(id)a3 didPublishDevice:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (kAVVCScope)
  {
    v8 = *kAVVCScope;
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
  }

  v10 = v8;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained(&self->_mMotherController);
    v12 = [v7 deviceIdentifier];
    *v24 = 136316674;
    *&v24[4] = "AVVCPluginRemoteInputHost.mm";
    *&v24[12] = 1024;
    *&v24[14] = 163;
    v25 = 2048;
    v26 = self;
    v27 = 2048;
    v28 = WeakRetained;
    v29 = 2048;
    v30 = v6;
    v31 = 2048;
    v32 = v7;
    v33 = 2112;
    v34 = v12;
    _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d self(%p) controller(%p) plugin(%p), did publish device(%p) with id(%@)", v24, 0x44u);
  }

LABEL_8:
  if (v7)
  {
    v13 = objc_loadWeakRetained(&self->_mMotherController);
    if (v13)
    {
      v14 = objc_loadWeakRetained(&self->_mMotherController);
      [v14 impl];
      if (*(*v24 + 520))
      {
        v15 = 0;
      }

      else
      {
        v17 = objc_loadWeakRetained(&self->_mMotherController);
        v15 = objc_opt_respondsToSelector();
      }

      if (*&v24[8])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&v24[8]);
      }

      if (v15)
      {
        v16 = objc_loadWeakRetained(&self->_mMotherController);
        [v16 handlePluginDidPublishDevice:v6 withDevice:v7];
        goto LABEL_30;
      }
    }

    if (kAVVCScope)
    {
      v16 = *kAVVCScope;
      if (!v16)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v16 = MEMORY[0x1E69E9C10];
      v18 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_30;
    }

    *v24 = 136315394;
    *&v24[4] = "AVVCPluginRemoteInputHost.mm";
    *&v24[12] = 1024;
    *&v24[14] = 171;
    v19 = "%25s:%-5d WARNING: Not forwarding didPublish event to AVVC parent because it does not exist, or is deallocating.";
    v20 = v16;
    v21 = OS_LOG_TYPE_DEFAULT;
LABEL_29:
    _os_log_impl(&dword_1BA5AC000, v20, v21, v19, v24, 0x12u);
    goto LABEL_30;
  }

  if (kAVVCScope)
  {
    v16 = *kAVVCScope;
    if (!v16)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v16 = MEMORY[0x1E69E9C10];
    v22 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *v24 = 136315394;
    *&v24[4] = "AVVCPluginRemoteInputHost.mm";
    *&v24[12] = 1024;
    *&v24[14] = 165;
    v19 = "%25s:%-5d ERROR: Received didPublishDevice with 'nil' device. Not forwarding event to AVVC parent.";
    v20 = v16;
    v21 = OS_LOG_TYPE_ERROR;
    goto LABEL_29;
  }

LABEL_30:

LABEL_31:
  v23 = *MEMORY[0x1E69E9840];
}

- (void)setParentVoiceController:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (kAVVCScope)
  {
    v5 = *kAVVCScope;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  v7 = v5;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained(&self->_mMotherController);
    v10 = 136316162;
    v11 = "AVVCPluginRemoteInputHost.mm";
    v12 = 1024;
    v13 = 157;
    v14 = 2048;
    v15 = self;
    v16 = 2048;
    v17 = WeakRetained;
    v18 = 2048;
    v19 = v4;
    _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d self(%p) oldController(%p) newController(%p)", &v10, 0x30u);
  }

LABEL_8:
  objc_storeWeak(&self->_mMotherController, v4);

  v9 = *MEMORY[0x1E69E9840];
}

- (id)findFirstBluetoothDevice
{
  v43 = *MEMORY[0x1E69E9840];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = self->mPlugins;
  v2 = [(AVAudioRemoteInputPlugin *)obj countByEnumeratingWithState:&v27 objects:v42 count:16];
  if (!v2)
  {
    goto LABEL_25;
  }

  v20 = *v28;
  v21 = v2;
  do
  {
    for (i = 0; i != v21; ++i)
    {
      if (*v28 != v20)
      {
        objc_enumerationMutation(obj);
      }

      v3 = *(*(&v27 + 1) + 8 * i);
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v4 = [v3 devices];
      v5 = [v4 countByEnumeratingWithState:&v23 objects:v41 count:16];
      if (!v5)
      {
LABEL_21:

        continue;
      }

      v6 = *v24;
LABEL_8:
      v7 = 0;
      while (1)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v23 + 1) + 8 * v7);
        if (kAVVCScope)
        {
          v9 = *kAVVCScope;
          if (!v9)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v10 = MEMORY[0x1E69E9C10];
          v11 = MEMORY[0x1E69E9C10];
          v9 = v10;
        }

        v12 = v9;
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          v13 = [v8 deviceIdentifier];
          v14 = [v3 devices];
          v15 = [v14 count];
          *buf = 136316162;
          v32 = "AVVCPluginRemoteInputHost.mm";
          v33 = 1024;
          v34 = 144;
          v35 = 2048;
          v36 = v8;
          v37 = 2112;
          v38 = v13;
          v39 = 1024;
          v40 = v15;
          _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d Device(%p). Identifier: %@ (num devices = %d)", buf, 0x2Cu);
        }

LABEL_18:
        if ([v8 deviceCategory] == 1919510644)
        {
          break;
        }

        if (v5 == ++v7)
        {
          v5 = [v4 countByEnumeratingWithState:&v23 objects:v41 count:16];
          if (v5)
          {
            goto LABEL_8;
          }

          goto LABEL_21;
        }
      }

      v16 = v8;

      if (v16)
      {
        goto LABEL_26;
      }
    }

    v21 = [(AVAudioRemoteInputPlugin *)obj countByEnumeratingWithState:&v27 objects:v42 count:16];
  }

  while (v21);
LABEL_25:
  v16 = 0;
LABEL_26:

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)findDeviceWithIdentifier:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__AVVCPluginRemoteInputHost_findDeviceWithIdentifier___block_invoke;
  block[3] = &unk_1E7EF6628;
  block[4] = self;
  if ([AVVCPluginRemoteInputHost findDeviceWithIdentifier:]::once != -1)
  {
    dispatch_once(&[AVVCPluginRemoteInputHost findDeviceWithIdentifier:]::once, block);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = self->mPlugins;
  v5 = [(AVAudioRemoteInputPlugin *)obj countByEnumeratingWithState:&v33 objects:v47 count:16];
  if (!v5)
  {
LABEL_28:

    if (kAVVCScope)
    {
      v21 = *kAVVCScope;
      if (!v21)
      {
        v20 = 0;
        goto LABEL_42;
      }
    }

    else
    {
      v21 = MEMORY[0x1E69E9C10];
      v23 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v39 = "AVVCPluginRemoteInputHost.mm";
      v40 = 1024;
      v41 = 129;
      v42 = 2112;
      v43 = v4;
      _os_log_impl(&dword_1BA5AC000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d Cannot find Remote Input device %@", buf, 0x1Cu);
    }

    v20 = 0;
    goto LABEL_41;
  }

  v27 = *v34;
LABEL_5:
  v6 = 0;
  v28 = v5;
  while (1)
  {
    if (*v34 != v27)
    {
      objc_enumerationMutation(obj);
    }

    v7 = *(*(&v33 + 1) + 8 * v6);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v8 = [v7 devices];
    v9 = [v8 countByEnumeratingWithState:&v29 objects:v46 count:16];
    if (v9)
    {
      break;
    }

LABEL_24:

LABEL_26:
    if (++v6 == v28)
    {
      v5 = [(AVAudioRemoteInputPlugin *)obj countByEnumeratingWithState:&v33 objects:v47 count:16];
      if (!v5)
      {
        goto LABEL_28;
      }

      goto LABEL_5;
    }
  }

  v10 = *v30;
LABEL_10:
  v11 = 0;
  while (1)
  {
    if (*v30 != v10)
    {
      objc_enumerationMutation(v8);
    }

    v12 = *(*(&v29 + 1) + 8 * v11);
    if (v12)
    {
      if (kAVVCScope)
      {
        v13 = *kAVVCScope;
        if (!v13)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v14 = MEMORY[0x1E69E9C10];
        v15 = MEMORY[0x1E69E9C10];
        v13 = v14;
      }

      v16 = v13;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v17 = [v12 deviceIdentifier];
        *buf = 136315906;
        v39 = "AVVCPluginRemoteInputHost.mm";
        v40 = 1024;
        v41 = 117;
        v42 = 2048;
        v43 = v12;
        v44 = 2112;
        v45 = v17;
        _os_log_impl(&dword_1BA5AC000, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d Device(%p). Identifier: %@", buf, 0x26u);
      }
    }

LABEL_21:
    v18 = [v12 deviceIdentifier];
    v19 = areDeviceUIDsSame(v18, v4);

    if (v19)
    {
      break;
    }

    if (v9 == ++v11)
    {
      v9 = [v8 countByEnumeratingWithState:&v29 objects:v46 count:16];
      if (v9)
      {
        goto LABEL_10;
      }

      goto LABEL_24;
    }
  }

  v20 = v12;

  if (!v12)
  {
    goto LABEL_26;
  }

  if (kAVVCScope)
  {
    v21 = *kAVVCScope;
    if (!v21)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v21 = MEMORY[0x1E69E9C10];
    v22 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v39 = "AVVCPluginRemoteInputHost.mm";
    v40 = 1024;
    v41 = 132;
    v42 = 2112;
    v43 = v4;
    _os_log_impl(&dword_1BA5AC000, v21, OS_LOG_TYPE_DEBUG, "%25s:%-5d findDeviceWithIdentifier: found the device %@", buf, 0x1Cu);
  }

LABEL_41:

LABEL_42:
  v24 = *MEMORY[0x1E69E9840];

  return v20;
}

void __54__AVVCPluginRemoteInputHost_findDeviceWithIdentifier___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = *(*(a1 + 32) + 8);
  v15 = [obj countByEnumeratingWithState:&v21 objects:v36 count:16];
  if (v15)
  {
    v14 = *v22;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v1 = *(*(&v21 + 1) + 8 * i);
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v2 = [v1 devices];
        v3 = [v2 countByEnumeratingWithState:&v17 objects:v35 count:16];
        if (v3)
        {
          v4 = *v18;
          do
          {
            for (j = 0; j != v3; ++j)
            {
              if (*v18 != v4)
              {
                objc_enumerationMutation(v2);
              }

              v6 = *(*(&v17 + 1) + 8 * j);
              if (kAVVCScope)
              {
                v7 = *kAVVCScope;
                if (!v7)
                {
                  continue;
                }
              }

              else
              {
                v8 = MEMORY[0x1E69E9C10];
                v9 = MEMORY[0x1E69E9C10];
                v7 = v8;
              }

              v10 = v7;
              if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
              {
                v11 = [v6 deviceIdentifier];
                *buf = 136316162;
                v26 = "AVVCPluginRemoteInputHost.mm";
                v27 = 1024;
                v28 = 106;
                v29 = 2048;
                v30 = v1;
                v31 = 2048;
                v32 = v6;
                v33 = 2112;
                v34 = v11;
                _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d plugin(%p) - device(%p) - id: %@", buf, 0x30u);
              }
            }

            v3 = [v2 countByEnumeratingWithState:&v17 objects:v35 count:16];
          }

          while (v3);
        }
      }

      v15 = [obj countByEnumeratingWithState:&v21 objects:v36 count:16];
    }

    while (v15);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)allBundles:(id *)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v25 = [MEMORY[0x1E696AC08] defaultManager];
  v23 = [v25 URLsForDirectory:5 inDomains:10];
  v24 = [MEMORY[0x1E695DF70] array];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v23;
  v3 = [obj countByEnumeratingWithState:&v29 objects:v41 count:16];
  if (v3)
  {
    v4 = 0;
    v5 = *v30;
    while (1)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v30 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v29 + 1) + 8 * i);

        v8 = [v7 URLByAppendingPathComponent:@"Audio/Plug-Ins/RemoteInput/"];
        v28 = 0;
        LODWORD(v7) = [v8 checkResourceIsReachableAndReturnError:&v28];
        v9 = v28;
        v10 = v9;
        if (!v7)
        {
          v4 = v9;
          goto LABEL_24;
        }

        if (kAVVCScope)
        {
          if (*(kAVVCScope + 8))
          {
            v11 = *kAVVCScope;
            if (v11)
            {
              v12 = v11;
              if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
              {
                v13 = [v8 absoluteString];
                *buf = 136315650;
                v34 = "AVVCPluginRemoteInputHost.mm";
                v35 = 1024;
                v36 = 84;
                v37 = 2112;
                v38 = v13;
                _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d Searching plugin path %@", buf, 0x1Cu);
              }
            }
          }
        }

        v27 = v10;
        v14 = [v25 contentsOfDirectoryAtURL:v8 includingPropertiesForKeys:0 options:4 error:&v27];
        v4 = v27;

        if (v4)
        {
          if (!kAVVCScope)
          {
            v16 = MEMORY[0x1E69E9C10];
            v17 = MEMORY[0x1E69E9C10];
            v15 = v16;
LABEL_20:
            v18 = v15;
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              v19 = [v8 absoluteString];
              v20 = [v4 debugDescription];
              *buf = 136315906;
              v34 = "AVVCPluginRemoteInputHost.mm";
              v35 = 1024;
              v36 = 87;
              v37 = 2112;
              v38 = v19;
              v39 = 2112;
              v40 = v20;
              _os_log_impl(&dword_1BA5AC000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d Error enumerating the remote input bundles at %@: %@", buf, 0x26u);
            }

            goto LABEL_23;
          }

          v15 = *kAVVCScope;
          if (v15)
          {
            goto LABEL_20;
          }
        }

        else
        {
          [v24 addObjectsFromArray:v14];
        }

LABEL_23:

LABEL_24:
      }

      v3 = [obj countByEnumeratingWithState:&v29 objects:v41 count:16];
      if (!v3)
      {

        break;
      }
    }
  }

  v21 = *MEMORY[0x1E69E9840];

  return v24;
}

- (void)invalidatePlugins
{
  v27 = *MEMORY[0x1E69E9840];
  if (kAVVCScope)
  {
    v3 = *kAVVCScope;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v22 = "AVVCPluginRemoteInputHost.mm";
    v23 = 1024;
    v24 = 60;
    v25 = 2048;
    v26 = self;
    _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d invalidatePlugins : invalidating all plugins *** %p", buf, 0x1Cu);
  }

LABEL_8:
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->mPlugins;
  v6 = [(AVAudioRemoteInputPlugin *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v8 = *v17;
    v9 = MEMORY[0x1E69E9C10];
    *&v7 = 136315650;
    v15 = v7;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        if (kAVVCScope)
        {
          v12 = *kAVVCScope;
          if (!v12)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v13 = v9;
          v12 = v9;
        }

        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v15;
          v22 = "AVVCPluginRemoteInputHost.mm";
          v23 = 1024;
          v24 = 62;
          v25 = 2048;
          v26 = v11;
          _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d -----> calling invalidate on plugin instance %p", buf, 0x1Cu);
        }

LABEL_20:
        [(AVVCPluginRemoteInputHost *)v11 invalidate:v15];
      }

      v6 = [(AVAudioRemoteInputPlugin *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  v13 = *MEMORY[0x1E69E9840];
  if (kAVVCScope)
  {
    v3 = *kAVVCScope;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v8 = "AVVCPluginRemoteInputHost.mm";
    v9 = 1024;
    v10 = 55;
    v11 = 2048;
    v12 = self;
    _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d dealloc : releasing all plugins *** %p", buf, 0x1Cu);
  }

LABEL_8:
  v6.receiver = self;
  v6.super_class = AVVCPluginRemoteInputHost;
  [(AVVCPluginRemoteInputHost *)&v6 dealloc];
  v5 = *MEMORY[0x1E69E9840];
}

- (AVVCPluginRemoteInputHost)init
{
  v43 = *MEMORY[0x1E69E9840];
  v35.receiver = self;
  v35.super_class = AVVCPluginRemoteInputHost;
  result = [(AVVCPluginRemoteInputHost *)&v35 init];
  if (result)
  {
    v28 = result;
    if (kAVVCScope)
    {
      v3 = *kAVVCScope;
      if (!v3)
      {
LABEL_9:
        v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
        mPlugins = v28->mPlugins;
        v28->mPlugins = v5;

        v34 = 0;
        v7 = [(AVVCPluginRemoteInputHost *)v28 allBundles:&v34];
        v27 = v34;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        obj = v7;
        v8 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
        if (!v8)
        {
          goto LABEL_39;
        }

        v9 = *v31;
        v10 = MEMORY[0x1E69E9C10];
        while (1)
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v31 != v9)
            {
              objc_enumerationMutation(obj);
            }

            v12 = *(*(&v30 + 1) + 8 * i);
            if (kAVVCScope)
            {
              v13 = *kAVVCScope;
              if (!v13)
              {
                goto LABEL_21;
              }
            }

            else
            {
              v14 = v10;
              v13 = v10;
            }

            v15 = v13;
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
            {
              v16 = [v12 absoluteString];
              *buf = 136315650;
              v38 = "AVVCPluginRemoteInputHost.mm";
              v39 = 1024;
              v40 = 33;
              v41 = 2112;
              v42 = v16;
              _os_log_impl(&dword_1BA5AC000, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d Plugin Bundle URL: %@", buf, 0x1Cu);
            }

LABEL_21:
            v17 = [MEMORY[0x1E696AAE8] bundleWithURL:v12];
            v18 = v17;
            if (v17)
            {
              v19 = [v17 principalClass];
              if (![v19 conformsToProtocol:&unk_1F386CCB8])
              {
                goto LABEL_37;
              }

              v20 = [[v19 alloc] initWithPluginDelegate:v28];
              [(AVAudioRemoteInputPlugin *)v28->mPlugins addObject:v20];
              if (kAVVCScope)
              {
                v21 = *kAVVCScope;
                if (!v21)
                {
                  goto LABEL_36;
                }
              }

              else
              {
                v23 = v10;
                v21 = v10;
              }

              v24 = v21;
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
              {
                v25 = NSStringFromClass(v19);
                *buf = 136315650;
                v38 = "AVVCPluginRemoteInputHost.mm";
                v39 = 1024;
                v40 = 42;
                v41 = 2112;
                v42 = v25;
                _os_log_impl(&dword_1BA5AC000, v24, OS_LOG_TYPE_DEBUG, "%25s:%-5d initialized plugin class %@", buf, 0x1Cu);
              }

              goto LABEL_36;
            }

            if (!kAVVCScope)
            {
              v22 = v10;
              v20 = v10;
LABEL_30:
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136315394;
                v38 = "AVVCPluginRemoteInputHost.mm";
                v39 = 1024;
                v40 = 46;
                _os_log_impl(&dword_1BA5AC000, v20, OS_LOG_TYPE_DEBUG, "%25s:%-5d Unable to create the plugin bundle", buf, 0x12u);
              }

LABEL_36:

              goto LABEL_37;
            }

            v20 = *kAVVCScope;
            if (v20)
            {
              goto LABEL_30;
            }

LABEL_37:
          }

          v8 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
          if (!v8)
          {
LABEL_39:

            result = v28;
            goto LABEL_40;
          }
        }
      }
    }

    else
    {
      v3 = MEMORY[0x1E69E9C10];
      v4 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v38 = "AVVCPluginRemoteInputHost.mm";
      v39 = 1024;
      v40 = 25;
      v41 = 2048;
      v42 = v28;
      _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d *** InitializePlugins *** %p ", buf, 0x1Cu);
    }

    goto LABEL_9;
  }

LABEL_40:
  v26 = *MEMORY[0x1E69E9840];
  return result;
}

@end