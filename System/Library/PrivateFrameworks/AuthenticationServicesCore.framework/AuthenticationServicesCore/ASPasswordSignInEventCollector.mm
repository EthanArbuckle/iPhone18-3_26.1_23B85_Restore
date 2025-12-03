@interface ASPasswordSignInEventCollector
- (_TtC26AuthenticationServicesCore30ASPasswordSignInEventCollector)init;
- (void)didUseCredentialForUsername:(id)username forHost:(id)host fromProviderWithBundleIdentifier:(id)identifier inAppWithBundleIdentifier:(id)bundleIdentifier listenerEndpoint:(id)endpoint;
- (void)didUseCredentialForUsername:(id)username forURL:(id)l fromProviderWithBundleIdentifier:(id)identifier inBrowserWithBundleIdentifier:(id)bundleIdentifier listenerEndpoint:(id)endpoint;
- (void)signInEventForRecentlyFilledCredentialWithUsername:(NSString *)username forAppWithBundleIdentifier:(NSString *)identifier completionHandler:(id)handler;
- (void)signInEventForRecentlyFilledCredentialWithUsername:(NSString *)username forRelyingPartyIdentifier:(NSString *)identifier inAppWithBundleIdentifier:(NSString *)bundleIdentifier completionHandler:(id)handler;
@end

@implementation ASPasswordSignInEventCollector

- (void)didUseCredentialForUsername:(id)username forURL:(id)l fromProviderWithBundleIdentifier:(id)identifier inBrowserWithBundleIdentifier:(id)bundleIdentifier listenerEndpoint:(id)endpoint
{
  bundleIdentifierCopy = bundleIdentifier;
  endpointCopy = endpoint;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23490, &qword_1C2176890);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v37 - v10;
  v42 = &v37 - v10;
  v12 = sub_1C2170024();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v37 - v17;
  v19 = sub_1C2170914();
  v40 = v20;
  v41 = v19;
  sub_1C216FFD4();
  v38 = sub_1C2170914();
  v22 = v21;
  bundleIdentifierCopy = sub_1C2170914();
  v39 = v23;
  v24 = sub_1C2170BE4();
  (*(*(v24 - 8) + 56))(v11, 1, 1, v24);
  (*(v13 + 16))(v16, v18, v12);
  v25 = (*(v13 + 80) + 72) & ~*(v13 + 80);
  v26 = (v14 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  *(v27 + 2) = 0;
  *(v27 + 3) = 0;
  v29 = v40;
  v28 = v41;
  *(v27 + 4) = self;
  *(v27 + 5) = v28;
  v30 = v38;
  *(v27 + 6) = v29;
  *(v27 + 7) = v30;
  *(v27 + 8) = v22;
  (*(v13 + 32))(&v27[v25], v16, v12);
  v32 = bundleIdentifierCopy;
  v31 = endpointCopy;
  *&v27[v26] = endpointCopy;
  v33 = &v27[(v26 + 15) & 0xFFFFFFFFFFFFFFF8];
  v34 = v39;
  *v33 = v32;
  v33[1] = v34;
  v35 = v31;
  swift_retain_n();
  v36 = v35;
  sub_1C211E0FC(0, 0, v42, &unk_1C21799F8, v27);

  (*(v13 + 8))(v18, v12);
}

- (void)didUseCredentialForUsername:(id)username forHost:(id)host fromProviderWithBundleIdentifier:(id)identifier inAppWithBundleIdentifier:(id)bundleIdentifier listenerEndpoint:(id)endpoint
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23490, &qword_1C2176890);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v29 - v12;
  v14 = sub_1C2170914();
  v29 = v15;
  v30 = v14;
  if (host)
  {
    host = sub_1C2170914();
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = sub_1C2170914();
  v20 = v19;
  v21 = sub_1C2170914();
  v23 = v22;
  v24 = sub_1C2170BE4();
  (*(*(v24 - 8) + 56))(v13, 1, 1, v24);
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = host;
  v25[5] = v17;
  v26 = v29;
  v27 = v30;
  v25[6] = self;
  v25[7] = v27;
  v25[8] = v26;
  v25[9] = v18;
  v25[10] = v20;
  v25[11] = endpoint;
  v25[12] = v21;
  v25[13] = v23;
  endpointCopy = endpoint;

  sub_1C211E0FC(0, 0, v13, &unk_1C21799F0, v25);
}

- (void)signInEventForRecentlyFilledCredentialWithUsername:(NSString *)username forRelyingPartyIdentifier:(NSString *)identifier inAppWithBundleIdentifier:(NSString *)bundleIdentifier completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23490, &qword_1C2176890);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v23 - v13;
  v15 = _Block_copy(handler);
  v16 = swift_allocObject();
  v16[2] = username;
  v16[3] = identifier;
  v16[4] = bundleIdentifier;
  v16[5] = v15;
  v16[6] = self;
  v17 = sub_1C2170BE4();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1C21799D8;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_1C21799E0;
  v19[5] = v18;
  usernameCopy = username;
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;

  sub_1C2166D88(0, 0, v14, &unk_1C21799E8, v19);
}

- (void)signInEventForRecentlyFilledCredentialWithUsername:(NSString *)username forAppWithBundleIdentifier:(NSString *)identifier completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23490, &qword_1C2176890);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = username;
  v14[3] = identifier;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_1C2170BE4();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1C21799B8;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1C21799C0;
  v17[5] = v16;
  usernameCopy = username;
  identifierCopy = identifier;

  sub_1C2166D88(0, 0, v12, &unk_1C21768B0, v17);
}

- (_TtC26AuthenticationServicesCore30ASPasswordSignInEventCollector)init
{
  swift_defaultActor_initialize();
  *&self->_anon_60[8] = sub_1C213F510(MEMORY[0x1E69E7CC0]);
  v4.receiver = self;
  v4.super_class = type metadata accessor for ASPasswordSignInEventCollector();
  return [(ASPasswordSignInEventCollector *)&v4 init];
}

@end