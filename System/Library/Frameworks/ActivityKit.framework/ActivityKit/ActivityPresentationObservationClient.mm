@interface ActivityPresentationObservationClient
- (_TtC11ActivityKit37ActivityPresentationObservationClient)init;
- (id)listenForActivityPresentationWithActivityIdentifier:(id)identifier presenterBundleIdentifier:(id)bundleIdentifier handler:(id)handler;
@end

@implementation ActivityPresentationObservationClient

- (id)listenForActivityPresentationWithActivityIdentifier:(id)identifier presenterBundleIdentifier:(id)bundleIdentifier handler:(id)handler
{
  v7 = _Block_copy(handler);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = qword_1EB09ECD8;
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  if (v9 != -1)
  {
    swift_once();
  }

  v12 = qword_1EB09ECE8;
  v16[4] = sub_1A2CA5C08;
  v16[5] = v8;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1A2CA2AC0;
  v16[3] = &block_descriptor_63_0;
  v13 = _Block_copy(v16);

  v14 = [v12 listenForActivityPresentationWithActivityIdentifier:identifierCopy presenterBundleIdentifier:bundleIdentifierCopy handler:v13];
  _Block_release(v13);

  return v14;
}

- (_TtC11ActivityKit37ActivityPresentationObservationClient)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ActivityPresentationObservationClient();
  return [(ActivityPresentationObservationClient *)&v3 init];
}

@end