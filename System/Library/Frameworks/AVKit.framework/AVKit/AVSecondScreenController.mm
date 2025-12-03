@interface AVSecondScreenController
+ (id)sharedInstance;
- (AVSecondScreenController)init;
- (id)_connectionForPlayer:(id)player;
- (id)_targetScreen;
- (id)addConnectionForPlayer:(id)player playerLayer:(id)layer;
- (id)connectionPassingTest:(id)test;
- (id)preferredConnection;
- (void)_insertConnection:(id)connection atIndex:(unint64_t)index;
- (void)_updateActiveConnection;
- (void)addConnection:(id)connection;
- (void)addSecondScreen:(id)screen;
- (void)dealloc;
- (void)removeConnection:(id)connection;
- (void)removeSecondScreen:(id)screen;
- (void)setPreferredConnection:(id)connection;
@end

@implementation AVSecondScreenController

- (void)_insertConnection:(id)connection atIndex:(unint64_t)index
{
  v15 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  v7 = _AVLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315650;
    v10 = "[AVSecondScreenController _insertConnection:atIndex:]";
    v11 = 2112;
    v12 = connectionCopy;
    v13 = 2048;
    indexCopy = index;
    _os_log_impl(&dword_18B49C000, v7, OS_LOG_TYPE_DEFAULT, "%s %@ %ld", &v9, 0x20u);
  }

  connections = [(AVSecondScreenController *)self connections];
  [connections insertObject:connectionCopy atIndex:index];
}

- (void)_updateActiveConnection
{
  v27 = *MEMORY[0x1E69E9840];
  if ([(AVSecondScreenController *)self allowsUpdatingActiveConnection])
  {
    _targetScreen = [(AVSecondScreenController *)self _targetScreen];
    v4 = _targetScreen;
    if (_targetScreen)
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __51__AVSecondScreenController__updateActiveConnection__block_invoke;
      v18[3] = &unk_1E7207798;
      v5 = _targetScreen;
      v19 = v5;
      v6 = [(AVSecondScreenController *)self connectionPassingTest:v18];
      v7 = _AVLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v22 = "[AVSecondScreenController _updateActiveConnection]";
        v23 = 2112;
        v24 = v5;
        v25 = 2112;
        v26 = v6;
        _os_log_impl(&dword_18B49C000, v7, OS_LOG_TYPE_DEFAULT, "%s %@ %@", buf, 0x20u);
      }

      [v5 connectWithSecondScreenConnection:v6];
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    secondScreens = [(AVSecondScreenController *)self secondScreens];
    v9 = [secondScreens countByEnumeratingWithState:&v14 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(secondScreens);
          }

          v13 = *(*(&v14 + 1) + 8 * v12);
          if (v13 != v4)
          {
            [v13 connectWithSecondScreenConnection:0];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [secondScreens countByEnumeratingWithState:&v14 objects:v20 count:16];
      }

      while (v10);
    }
  }
}

uint64_t __51__AVSecondScreenController__updateActiveConnection__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isReadyToConnect])
  {
    if ([*(a1 + 32) isTVOutScreen])
    {
      v4 = 1;
    }

    else
    {
      v4 = [v3 requiresTVOutScreen] ^ 1;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_targetScreen
{
  v19 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  secondScreens = [(AVSecondScreenController *)self secondScreens];
  reverseObjectEnumerator = [secondScreens reverseObjectEnumerator];

  v4 = [reverseObjectEnumerator countByEnumeratingWithState:&v10 objects:v18 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if ([v7 isAvailable])
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [reverseObjectEnumerator countByEnumeratingWithState:&v10 objects:v18 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = _AVLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v15 = "[AVSecondScreenController _targetScreen]";
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&dword_18B49C000, v8, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
  }

  return v4;
}

- (id)_connectionForPlayer:(id)player
{
  v17 = *MEMORY[0x1E69E9840];
  playerCopy = player;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  connections = [(AVSecondScreenController *)self connections];
  v6 = [connections countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(connections);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        player = [v9 player];

        if (player == playerCopy)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [connections countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)removeSecondScreen:(id)screen
{
  v11 = *MEMORY[0x1E69E9840];
  screenCopy = screen;
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[AVSecondScreenController removeSecondScreen:]";
    v9 = 2112;
    v10 = screenCopy;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %@", &v7, 0x16u);
  }

  secondScreens = [(AVSecondScreenController *)self secondScreens];
  [secondScreens removeObject:screenCopy];

  [(AVSecondScreenController *)self _updateActiveConnection];
}

- (void)addSecondScreen:(id)screen
{
  v13 = *MEMORY[0x1E69E9840];
  screenCopy = screen;
  if (screenCopy)
  {
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = "[AVSecondScreenController addSecondScreen:]";
      v11 = 2112;
      v12 = screenCopy;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %@", &v9, 0x16u);
    }

    isTVOutScreen = [screenCopy isTVOutScreen];
    secondScreens = [(AVSecondScreenController *)self secondScreens];
    v8 = secondScreens;
    if (isTVOutScreen)
    {
      [secondScreens addObject:screenCopy];
    }

    else
    {
      [secondScreens insertObject:screenCopy atIndex:0];
    }

    [(AVSecondScreenController *)self _updateActiveConnection];
  }
}

- (void)setPreferredConnection:(id)connection
{
  v19 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  preferredConnection = [(AVSecondScreenController *)self preferredConnection];
  if ([connectionCopy isEqual:preferredConnection])
  {
  }

  else
  {
    connections = [(AVSecondScreenController *)self connections];
    v7 = [connections containsObject:connectionCopy];

    if (v7)
    {
      v8 = _AVLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 136315394;
        v16 = "[AVSecondScreenController setPreferredConnection:]";
        v17 = 2112;
        v18 = connectionCopy;
        _os_log_impl(&dword_18B49C000, v8, OS_LOG_TYPE_DEFAULT, "%s %@", &v15, 0x16u);
      }

      connections2 = [(AVSecondScreenController *)self connections];
      v10 = [connections2 indexOfObject:connectionCopy];

      connections3 = [(AVSecondScreenController *)self connections];
      v12 = [connections3 count] - 1;

      if (v10 != v12)
      {
        connections4 = [(AVSecondScreenController *)self connections];
        v14 = [MEMORY[0x1E696AC90] indexSetWithIndex:v10];
        [connections4 moveObjectsAtIndexes:v14 toIndex:v12];

        [(AVSecondScreenController *)self _updateActiveConnection];
      }
    }
  }
}

- (id)preferredConnection
{
  connections = [(AVSecondScreenController *)self connections];
  lastObject = [connections lastObject];

  return lastObject;
}

- (id)connectionPassingTest:(id)test
{
  v17 = *MEMORY[0x1E69E9840];
  testCopy = test;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  connections = [(AVSecondScreenController *)self connections];
  reverseObjectEnumerator = [connections reverseObjectEnumerator];

  v7 = [reverseObjectEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if (v10 && testCopy[2](testCopy, *(*(&v12 + 1) + 8 * i)))
        {
          v7 = v10;
          goto LABEL_12;
        }
      }

      v7 = [reverseObjectEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v7;
}

- (void)removeConnection:(id)connection
{
  v11 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[AVSecondScreenController removeConnection:]";
    v9 = 1024;
    v10 = 153;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %d", &v7, 0x12u);
  }

  connections = [(AVSecondScreenController *)self connections];
  [connections removeObject:connectionCopy];

  [connectionCopy connectWithScreen:0 active:0];
  [(AVSecondScreenController *)self _updateActiveConnection];
}

- (void)addConnection:(id)connection
{
  v12 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[AVSecondScreenController addConnection:]";
    v10 = 1024;
    v11 = 138;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %d", &v8, 0x12u);
  }

  if ([connectionCopy isReadyToConnect] && ((objc_msgSend(connectionCopy, "isPlaying") & 1) != 0 || (-[AVSecondScreenController activeConnection](self, "activeConnection"), v6 = objc_claimAutoreleasedReturnValue(), v6, !v6)))
  {
    connections = [(AVSecondScreenController *)self connections];
    -[AVSecondScreenController _insertConnection:atIndex:](self, "_insertConnection:atIndex:", connectionCopy, [connections count]);
  }

  else
  {
    [(AVSecondScreenController *)self _insertConnection:connectionCopy atIndex:0];
  }

  [(AVSecondScreenController *)self _updateActiveConnection];
}

- (id)addConnectionForPlayer:(id)player playerLayer:(id)layer
{
  playerCopy = player;
  layerCopy = layer;
  if (AVSecondScreenTVSupportEnabled_onceToken != -1)
  {
    dispatch_once(&AVSecondScreenTVSupportEnabled_onceToken, &__block_literal_global_125);
  }

  if (AVSecondScreenTVSupportEnabled_AVSecondScreenTVSupportEnabled == 1 && ([(AVSecondScreenController *)self _connectionForPlayer:playerCopy], v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
  {
    v9 = [[AVSecondScreenConnection alloc] initWithPlayer:playerCopy playerLayer:layerCopy];
    [(AVSecondScreenController *)self addConnection:v9];
    [(AVSecondScreenConnection *)v9 startUpdates];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)dealloc
{
  [(AVSecondScreenController *)self setAllowsUpdatingActiveConnection:0];
  [(AVObservationController *)self->_observationController stopAllObservation];
  v3.receiver = self;
  v3.super_class = AVSecondScreenController;
  [(AVSecondScreenController *)&v3 dealloc];
}

- (AVSecondScreenController)init
{
  v25 = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = AVSecondScreenController;
  v2 = [(AVSecondScreenController *)&v23 init];
  if (v2)
  {
    orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
    connections = v2->_connections;
    v2->_connections = orderedSet;

    orderedSet2 = [MEMORY[0x1E695DFA0] orderedSet];
    secondScreens = v2->_secondScreens;
    v2->_secondScreens = orderedSet2;

    v7 = [[AVObservationController alloc] initWithOwner:v2];
    observationController = v2->_observationController;
    v2->_observationController = v7;

    [(AVObservationController *)v2->_observationController startObservingNotificationForName:*MEMORY[0x1E69DE388] object:0 notificationCenter:0 observationHandler:&__block_literal_global_5062];
    [(AVObservationController *)v2->_observationController startObservingNotificationForName:*MEMORY[0x1E69DDAB0] object:0 notificationCenter:0 observationHandler:&__block_literal_global_5062];
    [(AVObservationController *)v2->_observationController startObservingNotificationForName:*MEMORY[0x1E69DE350] object:0 notificationCenter:0 observationHandler:&__block_literal_global_6];
    [(AVObservationController *)v2->_observationController startObservingNotificationForName:@"AVSecondScreenDidDisconnectNotification" object:0 notificationCenter:0 observationHandler:&__block_literal_global_10];
    [(AVObservationController *)v2->_observationController startObservingNotificationForName:@"AVSecondScreenConnectionDidBecomePossibleNotification" object:0 notificationCenter:0 observationHandler:&__block_literal_global_13];
    [(AVObservationController *)v2->_observationController startObservingNotificationForName:@"AVSecondScreenConnectionReadyDidChangeNotification" object:0 notificationCenter:0 observationHandler:&__block_literal_global_16];
    [(AVObservationController *)v2->_observationController startObservingNotificationForName:@"AVSecondScreenConnectionPlayingDidChangeNotification" object:0 notificationCenter:0 observationHandler:&__block_literal_global_19];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    avkit_secondScreenScenes = [MEMORY[0x1E69DCE70] avkit_secondScreenScenes];
    v10 = [avkit_secondScreenScenes countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        v13 = 0;
        do
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(avkit_secondScreenScenes);
          }

          v14 = [[AVSecondScreen alloc] initWithScene:*(*(&v19 + 1) + 8 * v13)];
          [(AVSecondScreenController *)v2 addSecondScreen:v14];

          ++v13;
        }

        while (v11 != v13);
        v11 = [avkit_secondScreenScenes countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v11);
    }

    [(AVSecondScreenController *)v2 setAllowsUpdatingActiveConnection:1];
    objc_initWeak(&location, v2);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __32__AVSecondScreenController_init__block_invoke_2;
    v16[3] = &unk_1E7209EA8;
    objc_copyWeak(&v17, &location);
    dispatch_async(MEMORY[0x1E69E96A0], v16);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __32__AVSecondScreenController_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateActiveConnection];
}

void __32__AVSecondScreenController_init__block_invoke_17(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v5 = [a4 object];
  if ([v5 isPlaying] && objc_msgSend(v5, "isReadyToConnect"))
  {
    [v6 setPreferredConnection:v5];
  }
}

void __32__AVSecondScreenController_init__block_invoke_14(uint64_t a1, void *a2, void *a3, void *a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = a2;
  v9 = _AVLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315650;
    v11 = "[AVSecondScreenController init]_block_invoke";
    v12 = 2112;
    v13 = v7;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_18B49C000, v9, OS_LOG_TYPE_DEFAULT, "%s %@ %@", &v10, 0x20u);
  }

  [v8 _updateActiveConnection];
}

void __32__AVSecondScreenController_init__block_invoke_11(uint64_t a1, void *a2, void *a3, void *a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = a2;
  v9 = _AVLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315650;
    v11 = "[AVSecondScreenController init]_block_invoke";
    v12 = 2112;
    v13 = v7;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_18B49C000, v9, OS_LOG_TYPE_DEFAULT, "%s %@ %@", &v10, 0x20u);
  }

  [v8 _updateActiveConnection];
}

void __32__AVSecondScreenController_init__block_invoke_8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = a2;
  v7 = _AVLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[AVSecondScreenController init]_block_invoke";
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_18B49C000, v7, OS_LOG_TYPE_DEFAULT, "%s %@", &v9, 0x16u);
  }

  v8 = [v5 object];
  [v6 removeSecondScreen:v8];
}

void __32__AVSecondScreenController_init__block_invoke_4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = a2;
  v7 = _AVLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "[AVSecondScreenController init]_block_invoke";
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_18B49C000, v7, OS_LOG_TYPE_DEFAULT, "%s %@", &v11, 0x16u);
  }

  v8 = [AVSecondScreen alloc];
  v9 = [v5 object];
  v10 = [(AVSecondScreen *)v8 initWithScene:v9];
  [v6 addSecondScreen:v10];
}

void __32__AVSecondScreenController_init__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a4;
  v7 = _AVLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[AVSecondScreenController init]_block_invoke";
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_18B49C000, v7, OS_LOG_TYPE_DEFAULT, "%s %@", &v9, 0x16u);
  }

  v8 = [v5 activeConnection];

  if (!v8)
  {
    [v5 _updateActiveConnection];
  }
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__AVSecondScreenController_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken[0] != -1)
  {
    dispatch_once(sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_sharedInstance;

  return v2;
}

uint64_t __42__AVSecondScreenController_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance;
  sharedInstance_sharedInstance = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

@end